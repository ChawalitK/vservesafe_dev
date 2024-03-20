<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
require_once("classes/Shecup.php");

$shecup = new Shecup();

$_SESSION['lang'] = 'th';

if(isset($_POST['q']) && count($_POST['q'])>0){
   $answerx =  $shecup->addAnswer($_POST, $_SESSION['checklist_id']);
}

$list_step = "";
$sections = $shecup->getAllSection($_SESSION['lang'],  $_SESSION['checklist_id']);
$last_section_id = array(1);
foreach ($sections as $k => $v) { 

  if($sections[$k]["section_id"] > 0){
     array_push($last_section_id, $sections[$k]["section_id"]+1);
  }

  if (in_array($sections[$k]["question_no"], $last_section_id)) {
     if( $sections[$k]["question_no"] == end($last_section_id)){
        $list_step .= '<li class="step-item active" style="word-wrap: normal;"><a href="'.$_SERVER['PHP_SELF'].'">'.$sections[$k]["question_no"].'.'.$sections[$k]["question"].'</a></li>';
     }else{
        $list_step .= '<li class="step-item" style="word-wrap: normal;"><a href="'.$_SERVER['PHP_SELF'].'?sid='.$sections[$k]["question_no"].'">'.$sections[$k]["question_no"].'.'.$sections[$k]["question"].'</a></li>';
     }
  }else{
     $list_step .= '<li class="step-item" style="word-wrap: normal;"><span>'.$sections[$k]["question_no"].'.'.$sections[$k]["question"].'</span></li>';
  }
}

$question = $shecup->getQuestionBySection($_SESSION['lang'], isset($_GET['sid']) ? $_GET['sid'] : end($last_section_id));
$section  = $shecup->getSectionById($_SESSION['lang'], isset($_GET['sid']) ? $_GET['sid'] : end($last_section_id));

$list_question = "";

foreach ($question as $k => $v) {

    if($question[$k]['risk_level'] == "C"){
      $bgcolor_risk_level = 'bg-red text-primary-fg';
    }else if($question[$k]['risk_level'] == "M"){
      $bgcolor_risk_level = 'bg-yellow text-primary-fg';
    }else{
      $bgcolor_risk_level = 'bg-muted-lt';
    }

    $list_question .= '
    
    <div class="card" style="margin-bottom:20px;">
                  <div class="card-header">
                    <div>
                      <div class="row align-items-center">
                        <div class="col-auto">
                          <span class="avatar bg-primary text-primary-fg" style="font-size:17px;">'.$question[$k]['question_no'].'</span>
                        </div>
                        <div class="col">
                          <strong style="font-size:17px;">'.$question[$k]['question'].'</strong>
                        </div>
                      </div>
                    </div>
                    <div class="card-actions" style="min-width:95px;">
                      <span class="avatar '.$bgcolor_risk_level.'">'.$question[$k]['risk_level'].'</span>
                      <span class="avatar bg-green text-primary-fg">'.$question[$k]['score'].'</span>
                    </div>
                  </div>
    
    
    
    
    <div class="card-body"><div class="divide-y">
  
                        <div>
                          <div class="row">
                            <div class="mb-3">
                              <label class="form-label"><strong>Compliance Status</strong></label>
                              <input type="hidden" id="q['.$question[$k]["question_no"].']" name="q[]" value="'.$question[$k]["question_no"].'">
                              <input type="hidden" name="score['.$question[$k]["question_no"].']" value="'.$question[$k]["score"].'" >
                              <label class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a['.$question[$k]['question_no'].']" value="N/A"/>
                                <span class="form-check-label">N/A</span>
                              </label>
                              <label class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a['.$question[$k]['question_no'].']" value="Compliance"/>
                                <span class="form-check-label">Compliance</span>
                              </label>
                              <label class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a['.$question[$k]['question_no'].']" value="Non Compliance"/>
                                <span class="form-check-label">Non Compliance</span>
                              </label>
                              <label class="form-label"><strong>Findings</strong></label>
                              <textarea class="form-control" rows="3" name="findings['.$question[$k]["question_no"].']" value=""></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                      </div>

                      </div>
                      ';


}




?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Dashboard - Tabler - Premium and Open Source dashboard template with responsive and high quality UI.</title>
    <meta name="msapplication-TileColor" content="#0054a6"/>
    <meta name="theme-color" content="#0054a6"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="mobile-web-app-capable" content="yes"/>
    <meta name="HandheldFriendly" content="True"/>
    <meta name="MobileOptimized" content="320"/>
    <link rel="icon" href="./favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon"/>
    <!-- CSS files -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sarabun&display=swap" rel="stylesheet">
    <link href="css/vservesafe.min.css?1695847769" rel="stylesheet"/>

  </head>
  <body >
    <div class="page">
      <!-- Navbar -->
      <?php require_once('html/navbar.php');?>
      <div class="page-wrapper">
        <!-- Page header -->
        <div class="page-header d-print-none">
          <div class="container-xl">
            <div class="row g-2 align-items-center">
              <div class="col">
                <!-- Page pre-title -->
                <div class="page-pretitle">
                  Shec Up
                </div>
                <h2 class="page-title">
                  FSMS Audit Verification
                </h2>
              </div>
              <!-- Page title actions -->
              <div class="col-auto ms-auto d-print-none">
              </div>
            </div>
          </div>
        </div>

        <!-- Page body 2 -->
        <div class="page-body">
          <div class="container-xl d-flex flex-column justify-content-center">
          <div class="card-body">

<div class="row row-cards">
<div class="col-md-4">
<div class="card">
<div class="card-body">
  <div class="subheader">Percentage Achievement</div>
  <div class="h3 m-0" style="font-size:27px;">
  </div>
</div>
</div>
</div>
<div class="col-md-2">
<div class="card">
<div class="card-body">
  <div class="subheader">Total Score</div>
  <div class="h3 m-0" style="font-size:27px;"></div>
</div>
</div>
</div>
<div class="col-md-2">
<div class="card">
<div class="card-body">
  <div class="subheader">Total Point</div>
  <div class="h3 m-0" style="font-size:27px;"></div>
</div>
</div>
</div>
<div class="col-md-2">
<div class="card">
<div class="card-body">
  <div class="subheader">Total Answer</div>
  <div class="h3 m-0" style="font-size:27px;">



  </div>
</div>
</div>
</div>
<div class="col-md-2">
<div class="card">
<div class="card-body">
  <div class="subheader">Total N/A</div>
  <div class="h3 m-0" style="font-size:27px;">
  </div>
</div>
</div>
</div>




<div class="col-lg-4 d-none d-md-block d-lg-block">
<div class="card">
<div class="card-header bg-primary text-purple-fg">
  <h3 class="card-title " style="font-size:19px;">Verification Section</h3>
</div>
<div class="card-body">
  <!-- <h3 class="card-title">Section</h3> -->
  <ul class="steps steps-counter steps-vertical">

    <?php echo $list_step;?>
    <!-- <li class="step-item">Step one</li>
    <li class="step-item">Step two</li>
    <li class="step-item active">Step three</li>
    <li class="step-item">Step four</li>
    <li class="step-item">Step five</li>
    <li class="step-item">Step one</li>
    <li class="step-item">Step two</li>
    <li class="step-item active">Step three</li>
    <li class="step-item">Step four</li>
    <li class="step-item">Step five</li>
    <li class="step-item">Step one</li>
    <li class="step-item">Step two</li>
    <li class="step-item active">Step three</li>
    <li class="step-item">Step four</li>
    <li class="step-item">Step five</li>
    <li class="step-item">Step one</li>
    <li class="step-item">Step two</li>
    <li class="step-item active">Step three</li>
    <li class="step-item">Step four</li>
    <li class="step-item">Step five</li> -->
  </ul>
</div>
</div>
</div>


<div class="col-lg-8" style="margin-bottom:60px">


<div class="card">
<form action="" method="post" class="card" >
<div class="card-header bg-purple text-purple-fg">
  <h3 class="card-title " style="font-size:19px;"><?php echo $section[0]['question_no'].". ".$section[0]['question'];?></h3>
</div>
<div class="card-body">







  <?php echo $list_question;?>







</div>
<div class="card-footer text-center">
  <!-- <input type="submit" value="Submit"> -->
  <!-- <button class="btn btn-primary" type="submit">Submit</button> -->
  <button class="btn btn-primary" type="submit">Submit</button>
</div>
</form> 
</div>


</div>

</div>


  </div>
          </div>
        </div>
        <!-- Page body 2 -->

        <footer class="footer footer-transparent d-print-none">
          <div class="container-xl">
            <div class="row text-center align-items-center flex-row-reverse">
              <div class="col-lg-auto ms-lg-auto">
                <ul class="list-inline list-inline-dots mb-0">
                  <li class="list-inline-item"><a href="https://tabler.io/docs" target="_blank" class="link-secondary" rel="noopener">Documentation</a></li>
                  <li class="list-inline-item"><a href="./license.html" class="link-secondary">License</a></li>
                  <li class="list-inline-item"><a href="https://github.com/tabler/tabler" target="_blank" class="link-secondary" rel="noopener">Source code</a></li>
                  <li class="list-inline-item">
                    <a href="https://github.com/sponsors/codecalm" target="_blank" class="link-secondary" rel="noopener">
                      <!-- Download SVG icon from http://tabler-icons.io/i/heart -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon text-pink icon-filled icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" /></svg>
                      Sponsor
                    </a>
                  </li>
                </ul>
              </div>
              <div class="col-12 col-lg-auto mt-3 mt-lg-0">
                <ul class="list-inline list-inline-dots mb-0">
                  <li class="list-inline-item">
                    Copyright &copy; 2023
                    <a href="." class="link-secondary">Tabler</a>.
                    All rights reserved.
                  </li>
                  <li class="list-inline-item">
                    <a href="./changelog.html" class="link-secondary" rel="noopener">
                      v1.0.0-beta20
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <div class="modal modal-blur fade" id="modal-report" tabindex="-1" role="dialog" aria-hidden="true">

      <form method="post">

      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">New report</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="mb-3">
              <label class="form-label">Auditor Name</label>
              <input type="text" class="form-control" name="audit_name" value="<?=$_SESSION['profile_firstname']." ".$_SESSION['profile_lastname'] ?>" placeholder="Your report name">
            </div>
            <div class="row">


            <div class="col-lg-8">
                <div class="mb-3">
                  <label class="form-label">Site Name</label>
                  <div class="input-group input-group-flat">
                    <input type="text" class="form-control" value="<?=$_SESSION['site_name'];?>" autocomplete="off">
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="mb-3">
                  <label class="form-label">Checklist Type</label>
                  <select class="form-select" name="audit_type">
                    <option value="Internal" selected>Internal</option>
                    <option value="External">External</option>
                  </select>
                </div>
              </div>

              <div class="col-lg-12">
                <div>
                  <label class="form-label">Additional information</label>
                  <textarea class="form-control" rows="3" name="additional"></textarea>
                </div>
              </div>




            </div> <!--  row -->





          </div>
 
          <div class="modal-footer">
            <a href="#" class="btn btn-link link-secondary" data-bs-dismiss="modal">
              Cancel
            </a>
            <input type="hidden" class="form-control" name="site_id" value="<?=$_SESSION['site_id'];?>"> 
            <button type="submit" class="btn btn-primary">

            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 5l0 14" /><path d="M5 12l14 0" /></svg>
              Create new checklist
            </button>


          </div>
        </div>
      </div>

      </form>
    </div>

    <!-- Tabler Core -->
    <script src="js/tabler.min.js" defer></script>
  </body>
</html>