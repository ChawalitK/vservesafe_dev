<?php 
require_once("Database.php");

class Auth
{
    private $db;

    function __construct() {
        $this->db = new Database();
    }

    function login($username, $password) {

        $query = "SELECT * FROM users u LEFT JOIN profiles p ON u.user_id = p.user_id 
                    LEFT JOIN sites s ON p.site_id = s.site_id 
                    WHERE u.username = ? and u.password = password(?) and u.user_active = 'Y'
                    and u.user_locked = 'N' limit 1";

        $paramType = "ss";
        $paramValue = array(
            $username,
            $password
        );
        $result = $this->db->runQuery($query, $paramType, $paramValue);
        $_SESSION = $result[0];
        
        return $result;
    }
    
}
?>