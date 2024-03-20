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
	array( 'db' => 'total_na',     'dt' => 8 )
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


