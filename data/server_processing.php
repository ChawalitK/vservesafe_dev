<?php
session_start();
$table = 'shecup_fsms_audit';
$primaryKey = 'audit_id';

$columns = array(
	array( 
		'db' => 'audit_referance', 
		'dt' => 0, 
		'formatter' => function( $d, $row ) {
				return '<a href="shecup_initial.php?cipher=' . base64_encode(base64_encode(base64_encode($d))) . '">' . $d . '</a>';
		} ),
	array(
		'db'        => 'audit_date',
		'dt'        => 1,
		'formatter' => function( $d, $row ) {
			return date( 'd-M-Y H:i:s', strtotime($d));
		}
	),
	array( 'db' => 'audit_type',  'dt' => 2 ),
	array( 'db' => 'audit_name',   'dt' => 3 ),
	array( 'db' => 'achievement',     'dt' => 4 ),
	array( 'db' => 'total_score',     'dt' => 5 ),
	array( 'db' => 'total_point',     'dt' => 6 ),
	array( 'db' => 'total_answer',     'dt' => 7 ),
	array( 'db' => 'total_na',     'dt' => 8 ),
	array( 
		'db' => 'audit_referance', 
		'dt' => 9, 
		'formatter' => function( $d, $row ) {
				return '
				
				<a href="#" target="_blank" rel="noopener" class="demo-icons-list-item" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="file-report" data-bs-original-title="file-report"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M17 17m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0"></path><path d="M17 13v4h4"></path><path d="M12 3v4a1 1 0 0 0 1 1h4"></path><path d="M11.5 21h-6.5a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v2m0 3v4"></path></svg></a>
				<a href="#" target="_blank" rel="noopener" class="demo-icons-list-item" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="hand-rock" data-bs-original-title="hand-rock">
					<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M11 11.5v-1a1.5 1.5 0 0 1 3 0v1.5"></path><path d="M17 12v-6.5a1.5 1.5 0 0 1 3 0v10.5a6 6 0 0 1 -6 6h-2h.208a6 6 0 0 1 -5.012 -2.7a69.74 69.74 0 0 1 -.196 -.3c-.312 -.479 -1.407 -2.388 -3.286 -5.728a1.5 1.5 0 0 1 .536 -2.022a1.867 1.867 0 0 1 2.28 .28l1.47 1.47"></path><path d="M14 10.5a1.5 1.5 0 0 1 3 0v1.5"></path><path d="M8 13v-8.5a1.5 1.5 0 0 1 3 0v7.5"></path></svg>
				</a>


				
				';
		} )
);

$sql_details = array(
	'user' => 'root',
	'pass' => '!QAZxsw2#',
	'db'   => 'vservesafe',
	'host' => 'localhost'
);

require( '../classes/ssp.class.php' );

echo json_encode(
	// SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns)
	SSP::complex( $_GET, $sql_details, $table, $primaryKey, $columns, null, "user_id=".$_SESSION['user_id']."" )
);


