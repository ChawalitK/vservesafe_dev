<?php
session_start();

if(isset($_GET['cipher']) && strlen($_GET['cipher']) > 0){
  $cipher_decode =  base64_decode(base64_decode(base64_decode($_GET['cipher'])));
  $_SESSION['checklist_id'] = substr($cipher_decode, -8, 8);
  header("location:shecup_checklist.php");
}else{
  unset($_SESSION['checklist_id']);
}

?>