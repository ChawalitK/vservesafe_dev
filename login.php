<?php
session_start();
require_once("classes/Auth.php");

if(isset($_POST['username']) && isset($_POST['password']) > 0){
  $authen = new Auth();
  $account = $authen->login($_POST['username'] , $_POST['password']);
  header("location:shecup.php");
}

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign in - Tabler - Premium and Open Source dashboard template with responsive and high quality UI.</title>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="mobile-web-app-capable" content="yes"/>
    <meta name="HandheldFriendly" content="True"/>
    <meta name="MobileOptimized" content="320"/>
    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sarabun:ital@0;1&display=swap" rel="stylesheet"> 
    <link href="css/vservesafe.min.css" rel="stylesheet"/>

  </head>
  <body  class=" d-flex flex-column">
    <div class="page page-center">
      <div class="container container-tight py-4">
        <div class="card card-md">
          <div class="card-body">
            <h2 class="h2 text-center mb-4"><img src="static/logo.png" height="42" alt=""></h2>

            <form action="" method="post">
              <div class="mb-3">
                <label class="form-label">Email address</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="your@email.com" autocomplete="off">
              </div>
              <div class="mb-2">
                <label class="form-label">
                  Password
                  <span class="form-label-description">
                    <a href="forgot-password.html">I forgot password</a>
                  </span>
                </label>
                <div class="input-group input-group-flat">
                  <input type="password" id="password" name="password" class="form-control"  placeholder="Your password"  autocomplete="off">
                  <span class="input-group-text">
                    <a href="#" class="link-secondary" title="Show password" data-bs-toggle="tooltip"><!-- Download SVG icon from http://tabler-icons.io/i/eye -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 12m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /><path d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7" /></svg>
                    </a>
                  </span>
                </div>
              </div>
              <div class="mb-2">
                <label class="form-check">
                  <input type="checkbox" class="form-check-input"/>
                  <span class="form-check-label">Remember me on this device</span>
                </label>
              </div>
              <div class="form-footer">
                <button type="submit" class="btn btn-primary w-100">Sign in</button>
              </div>
            </form>
          </div>
        </div>
        <div class="text-center text-muted mt-3">
          Don't have account yet? <a href="sign-up.html" tabindex="-1">Sign up</a>
        </div>
      </div>
    </div>
  </body>
</html>