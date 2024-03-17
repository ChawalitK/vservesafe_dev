<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/favicon.ico">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, user-scalable=no">
	<title>DataTables example - Pipelining data to reduce Ajax calls for paging</title>
	<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
	<style type="text/css" class="init">
	
	</style>
	<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>

	<script type="text/javascript" language="javascript" class="init">
	
$.fn.dataTable.pipeline = function ( opts ) {
	// Configuration options
	var conf = $.extend( {
		pages: 5,     // number of pages to cache
		url: '',      // script url
		data: null,   // function or object with parameters to send to the server
		              // matching how `ajax.data` works in DataTables
		method: 'GET' // Ajax HTTP method
	}, opts );

	// Private variables for storing the cache
	var cacheLower = -1;
	var cacheUpper = null;
	var cacheLastRequest = null;
	var cacheLastJson = null;

	return function ( request, drawCallback, settings ) {
		var ajax          = false;
		var requestStart  = request.start;
		var drawStart     = request.start;
		var requestLength = request.length;
		var requestEnd    = requestStart + requestLength;
		
		if ( settings.clearCache ) {
			// API requested that the cache be cleared
			ajax = true;
			settings.clearCache = false;
		}
		else if ( cacheLower < 0 || requestStart < cacheLower || requestEnd > cacheUpper ) {
			// outside cached data - need to make a request
			ajax = true;
		}
		else if ( JSON.stringify( request.order )   !== JSON.stringify( cacheLastRequest.order ) ||
		          JSON.stringify( request.columns ) !== JSON.stringify( cacheLastRequest.columns ) ||
		          JSON.stringify( request.search )  !== JSON.stringify( cacheLastRequest.search )
		) {
			// properties changed (ordering, columns, searching)
			ajax = true;
		}
		
		// Store the request for checking next time around
		cacheLastRequest = $.extend( true, {}, request );

		if ( ajax ) {
			// Need data from the server
			if ( requestStart < cacheLower ) {
				requestStart = requestStart - (requestLength*(conf.pages-1));

				if ( requestStart < 0 ) {
					requestStart = 0;
				}
			}
			
			cacheLower = requestStart;
			cacheUpper = requestStart + (requestLength * conf.pages);

			request.start = requestStart;
			request.length = requestLength*conf.pages;

			// Provide the same `data` options as DataTables.
			if ( typeof conf.data === 'function' ) {
				// As a function it is executed with the data object as an arg
				// for manipulation. If an object is returned, it is used as the
				// data object to submit
				var d = conf.data( request );
				if ( d ) {
					$.extend( request, d );
				}
			}
			else if ( $.isPlainObject( conf.data ) ) {
				// As an object, the data given extends the default
				$.extend( request, conf.data );
			}

			return $.ajax( {
				"type":     conf.method,
				"url":      conf.url,
				"data":     request,
				"dataType": "json",
				"cache":    false,
				"success":  function ( json ) {
					cacheLastJson = $.extend(true, {}, json);

					if ( cacheLower != drawStart ) {
						json.data.splice( 0, drawStart-cacheLower );
					}
					if ( requestLength >= -1 ) {
						json.data.splice( requestLength, json.data.length );
					}
					
					drawCallback( json );
				}
			} );
		}
		else {
			json = $.extend( true, {}, cacheLastJson );
			json.draw = request.draw; // Update the echo for each response
			json.data.splice( 0, requestStart-cacheLower );
			json.data.splice( requestLength, json.data.length );

			drawCallback(json);
		}
	}
};

// Register an API method that will empty the pipelined data, forcing an Ajax
// fetch on the next draw (i.e. `table.clearPipeline().draw()`)
$.fn.dataTable.Api.register( 'clearPipeline()', function () {
	return this.iterator( 'table', function ( settings ) {
		settings.clearCache = true;
	} );
} );


//
// DataTables initialisation
//
$(document).ready(function() {
	$('#example').DataTable( {
		"processing": true,
		"serverSide": true,
		"ajax": $.fn.dataTable.pipeline( {
			url: 'data/server_processing.php',
			pages: 5 // number of pages to cache
		} )
	} );
} );


	</script>
</head>
<body class="dt-example">
	<div class="container">
		<section>
			<table id="example" class="display" style="width:100%">
				<thead>
					<tr>
						<th>First name</th>
						<th>Last name</th>
						<th>Position</th>
						<th>Office</th>
						<th>Start date</th>
						<th>Salary</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>First name</th>
						<th>Last name</th>
						<th>Position</th>
						<th>Office</th>
						<th>Start date</th>
						<th>Salary</th>
					</tr>
				</tfoot>
			</table>
		</section>
	</div>
</body>
</html>