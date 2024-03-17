<?php 
require_once("Database.php");

class Auth
{
    private $db;

    function __construct() {
        $this->db = new Database();
    }

    function login($username, $password) {
        $query = "SELECT * FROM users u LEFT JOIN profiles p ON u.id = p.user_id LEFT JOIN sites s ON p.site_id = s.id 
                    WHERE u.username = ? and u.password = password(?)";
        $paramType = "ss";
        $paramValue = array(
            $username,
            $password
        );
        $result = $this->db->runQuery($query, $paramType, $paramValue);
        return $result;
    }
    
    // function getAllQuestion() {
    //     $sql = "SELECT * FROM shecup_fsms_question ORDER BY id";
    //     $result = $this->db->runBaseQuery($sql);
    //     return $result;
    // }
}
?>