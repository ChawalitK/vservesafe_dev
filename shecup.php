<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
require_once("classes/Shecup.php");

$shecup = new Shecup();

if((!isset($_SESSION['user_id'])) && (!isset($_SESSION['user_email']))){
  header("location:login.php");
}

if((isset($_POST['site_id'])) && (isset($_POST['audit_type']))){  
  
  $_post = array();
  $_post['site_id'] = $_POST['site_id'];
  $_post['user_id'] = $_SESSION['user_id'];
  $_post['audit_name'] = $_POST['audit_name'];
  $_post['audit_type'] = $_POST['audit_type']; 
  $_post['additional'] = $_POST['additional'];

  $last_checklist_id = $shecup->addChecklist($_post);

  header('location:'.$_SERVER['PHP_SELF']);
}

$checklist_rows = $shecup->getChecklistById($_SESSION['user_id']);

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
              <?php if(!empty($checklist_rows)){?>
              <div class="col-auto ms-auto d-print-none">
                <div class="btn-list">
                  <a href="#" class="btn btn-primary d-none d-sm-inline-block" data-bs-toggle="modal" data-bs-target="#modal-report">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 5l0 14"></path><path d="M5 12l14 0"></path></svg>
                    Create new checklist
                  </a>
                </div>
              </div>
              <?php } ?>

              <!-- Page title actions -->
              <div class="col-auto ms-auto d-print-none">
              </div>
            </div>
          </div>
        </div>
        <!-- Page body 1 -->
        <?php if(empty($checklist_rows)){?>
        <div class="page-body">
          <div class="container-xl d-flex flex-column justify-content-center">
            <div class="empty">
              <div class="empty-img"><img src="./static/illustrations/undraw_printing_invoices_5r4r.svg" height="128" alt="">
              </div>
              <p class="empty-title">No checklists found</p>
              <p class="empty-subtitle text-secondary">
                Try adjusting your search or filter to find what you're looking for.
              </p>
              <div class="empty-action">
                  <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal-report">
                  <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 5l0 14" /><path d="M5 12l14 0" /></svg>
                  Add your first checklist
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- Page body 1 -->
        <?php }else{?>

        <script src="js/jquery-3.7.1.js"></script> 
        <script src="js/dataTables.js"></script>  
        <script src="js/dataTables.bootstrap5.js"></script> 
        <link href="css/vservesafe.min.css?1695847769" rel="stylesheet"/>
        <link href="css/dataTables.bootstrap5.css" defer></script>
        <script src="js/dataShecup.js"></script>  


        <style>

          .form-select-sm{
            /* padding:5px; */
            font-size:0.95rem;
            /* all: unset; */
            border-radius:4px;

          }
          .dt-length, .dt-search{
            display: flex !important;
            padding-bottom:15px;
          }
          .dt-length > label:nth-child(2) {
            /* color: red; */
            white-space: nowrap;
            margin-left:15px;
          }

          #dt-search-0{
            margin-left:10px;
            font-size: 0.975rem;
            border-radius:4px;
          }

          </style> 


        <!-- Page body 2 -->
        <div class="page-body">
          <div class="container-xl d-flex flex-column justify-content-center">
            <div class="card">
              <div class="card-header">
                  <h3 class="card-title">My checklist</h3>
              </div>
              <div class="card-body">
                <table id="example" class="table">
                  <thead>
                      <tr>
                          <th>Referance ID</th>
                          <th>Audit Date</th>
                          <th>Audit Type</th>
                          <th>Auditor Name</th>
                          <th>Achievement(%)</th>
                          <th>Score</th>
                          <th>Point</th>
                          <th>Answer</th>
                          <th>N/A</th>
                          <th>Action</th>
                      </tr>
                  </thead>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!-- Page body 2 -->
        <?php }?>



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