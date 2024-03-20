<?php 
date_default_timezone_set("Asia/Bangkok");
require_once("Database.php");

class Shecup
{
    private $db;

    function __construct() {
        $this->db = new Database();
    }

    function addChecklist($_post) {
        
        $auto_increment_id = $this->getAutoIncrementId();

        $site_id =  $_post['site_id'];
        $user_id =  $_post['user_id'];
        $audit_referance =  "SHU"."-".$auto_increment_id;
        $audit_name =  $_post['audit_name'];
        $audit_type =  $_post['audit_type']; 
        $additional =  $_post['additional']; 

        $query = "INSERT INTO shecup_fsms_audit (site_id, user_id, audit_referance, audit_name, audit_type, additional) 
                    VALUES (?, ?, ?, ?, ?, ?)";
        $paramType = "iissss";
        $paramValue = array(
            $site_id, $user_id, $audit_referance, $audit_name, $audit_type, $additional
        );
        $insertId = $this->db->insert($query, $paramType, $paramValue);

        return $insertId;
    }

    function getAutoIncrementId() {

        $sql = "SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'vservesafe' 
                    AND TABLE_NAME = 'shecup_fsms_audit'";
        $result = $this->db->runBaseQuery($sql);

        return $result[0]['AUTO_INCREMENT'];
    }

    function getChecklistById($user_id) {
        $query = "SELECT * FROM shecup_fsms_audit WHERE user_id = ?";
        $paramType = "i";
        $paramValue = array(
            $user_id
        );
        
        $result = $this->db->runQuery($query, $paramType, $paramValue);
        return $result;
    }

    function addAnswer($answer, $checklist_id) {
        // echo "<pre>";
        // print_r($answer);

        // $_SESSION['checklist_id'] = 11;

        $list_insert_id = array();

        for($i=0;$i<count($answer['q']);$i++){

            $section_id = (explode(".",$answer['q'][$i]));

            $company_id = 1;
            $audit_id = $checklist_id;
            $section_id = $section_id[0];
            $question_no = $answer['q'][$i];
            $score = $answer['score'][$answer['q'][$i]];
            $compliance_status = $answer['a'][$answer['q'][$i]];
            $findings = $answer['findings'][$answer['q'][$i]];

            if($compliance_status == 'Compliance'){
                $point = $score;
            }else{
                $point = 0;
            }

            $query = "INSERT INTO shecup_fsms_answers(`company_id`, `audit_id`, `section_id`, `question_no`, `score`, `point`, `compliance_status`,
                        `finding`, `created`, `updated`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, Now(), Now())
                        ON DUPLICATE KEY UPDATE point = ?, compliance_status = ?";
            $paramType = "iiisiissis";
            $paramValue = array(
                $company_id,
                $audit_id,
                $section_id,
                $question_no,
                $score,
                $point,
                $compliance_status,
                $findings,
                $point,
                $compliance_status
            );
            $insertId = $this->db->insert($query, $paramType, $paramValue);
            array_push($list_insert_id, $insertId);
        }
        return $list_insert_id;
    }


    function getAllSection($lang, $checklist_id) {

        $query = "SELECT shecup_fsms_question.question, shecup_fsms_question.question_no, shecup_fsms_answers.section_id 
                    FROM shecup_fsms_question  
                    LEFT JOIN shecup_fsms_answers ON shecup_fsms_question.question_no = shecup_fsms_answers.section_id 
                    and shecup_fsms_answers.audit_id = ?
                    WHERE shecup_fsms_question.parent_id = 0 and shecup_fsms_question.question_lang = ?
                    group by shecup_fsms_question.id
                    order by shecup_fsms_question.id asc";
        $paramType = "is";
        $paramValue = array(
            $checklist_id,
            $lang
        );
        
        $result = $this->db->runQuery($query, $paramType, $paramValue);
        return $result;  
    }

    function getQuestionBySection($question_lang='th', $section_id=1) {
        $query = "SELECT * FROM shecup_fsms_question WHERE question_lang = ? and parent_id = ?";
        $paramType = "si";
        $paramValue = array(
            $question_lang,
            $section_id
        );
        
        $result = $this->db->runQuery($query, $paramType, $paramValue);
        return $result;
    }

    function getSectionById($question_lang='th', $question_no=1) {
        $query = "SELECT * FROM shecup_fsms_question WHERE question_lang = ? and question_no = ? limit 1";
        $paramType = "ss";
        $paramValue = array(
            $question_lang,
            $question_no
        );
        
        $result = $this->db->runQuery($query, $paramType, $paramValue);
        return $result;
    }





}
?>