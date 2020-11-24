<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>
<script src="js/firebaseConfig.js"></script>

     <!-- Favicon -->
    <link rel="icon" href="img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <link rel="stylesheet" href="vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
    <!-- Argon CSS -->
    <link rel="stylesheet" href="css/argon.css?v=1.2.0" type="text/css">
    
</head>
<body class="bg-default">
    <!-- Navbar -->
    <nav id="navbar-main" class="navbar navbar-horizontal navbar-transparent navbar-main navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand" href="dashboard.html">
            <img src="img/brand/white.png">
          </a>
        </div>
      </nav>
    <!-- Main content -->
    <div class="main-content">
      <!-- Header -->
      <div class="header bg-gradient-primary py-7 py-lg-8 pt-lg-9">
        <div class="separator separator-bottom separator-skew zindex-100">
          <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
            <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
          </svg>
        </div>
      </div>
      <!-- Page content -->
      <div class="container mt--9 ">
        <div class="row justify-content-center">
          <div class="col-lg-5 col-md-7">
            <div class="card bg-secondary border-0 mb-0">
             
              <div class="card-body px-lg-5 py-lg-5">
                <div class="text-center text-muted mb-4">
                  <H1 class="text-default">Welcome Back!</H1>
                </div>
                <form role="form">
                  <div class="form-group mb-3">
                    <div class="input-group input-group-merge input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                      </div>
                      <input id="txtEmail" class="form-control" placeholder="Email" type="email">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group input-group-merge input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input id="txtPass" class="form-control" placeholder="Password" type="password">
                    </div>
                  </div>
                  <div class="text-center">
                    <button type="button" class="btn btn-primary my-4" onclick="signIn()">Sign in</button>
                  </div>
                </form>
              </div>
            </div>
           
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Argon Scripts -->
    <!-- Core -->
    <script src="vendor/jquery/dist/jquery.min.js"></script>
    <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/js-cookie/js.cookie.js"></script>
    <script src="vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
    <script src="js/function.js"></script>
    <!-- Argon JS -->
    <script src="js/argon.js?v=1.2.0"></script>
</body>
</html>