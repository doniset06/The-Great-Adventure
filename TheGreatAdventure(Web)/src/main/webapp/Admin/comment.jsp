<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
=========================================================
* Argon Dashboard - v1.2.0
=========================================================
* Product Page: https://www.creative-tim.com/product/argon-dashboard


* Copyright  Creative Tim (http://www.creative-tim.com)
* Coded by www.creative-tim.com



=========================================================
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Admin The Great Adventure</title>
  <!-- Favicon -->
  <link rel="icon" href="img/brand/favicon.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="css/argon.css" type="text/css">
  <link rel="stylesheet" href="vendor/sweetalert2/dist/sweetalert2.min.css">
  <script src="vendor/sweetalert2/dist/sweetalert2.all.min.js"></script>

  
   <!-- The core Firebase JS SDK is always required and must be listed first -->
	<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-database.js"></script>
      <script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-firestone.js"></script>
      <script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>
  <!-- TODO: Add SDKs for Firebase products that you want to use
    https://firebase.google.com/docs/web/setup#available-libraries -->
   <script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>
   <script src="js/firebaseConfig.js"></script>
<script>
 firebase.analytics();
</script>
   
</head>

<body>

  <!-- Sidenav -->
  <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
      <!-- Brand -->
      <div class="sidenav-header  align-items-center">
        <a class="navbar-brand" href="javascript:void(0)">
          <img src="img/brand/blue.png" class="navbar-brand-img" alt="...">
        </a>
      </div>
      <div class="navbar-inner">
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
          <!-- Nav items -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" href="index.jsp">
                <i class="ni ni-book-bookmark text-primary"></i>
                <span class="nav-link-text">List Booking</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="comment.jsp">
                <i class="ni ni-books text-orange"></i>
                <span class="nav-link-text">List Comment</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- Main content -->
  <div class="main-content" id="panel">
    <!-- Topnav -->
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Navbar links -->
          <ul class="navbar-nav align-items-center  ml-md-auto ">
            <li class="nav-item d-xl-none">
              <!-- Sidenav toggler -->
              <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin" data-target="#sidenav-main">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </div>
            </li>
          </ul>
          <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
            <li class="nav-item dropdown">
              <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="media align-items-center">
                  <span class="avatar avatar-sm rounded-circle">
                    <img alt="Image placeholder" src="img/theme/admin.png">
                  </span>
                  <div class="media-body  ml-2  d-none d-lg-block">
                    <span id="admin" class="mb-0 text-sm  font-weight-bold">Admin</span>
                  </div>
                </div>
              </a>
              <div class="dropdown-menu  dropdown-menu-right ">
                <a onclick="signOut()" class="dropdown-item">
                  <i class="ni ni-user-run"></i>
                  <span>Logout</span>
                </a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Header -->
    <!-- Header -->
    <div class="header bg-primary">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-6 col-7">
              <h6 class="h2 text-white d-inline-block mb-0">List Comment</h6>
            </div>
          </div>
          <!-- Card stats -->
          <div class="row">
            <div class="col-md-12">
              <div class="card card-stats">
                <!-- Card body -->
                <div class="card-body">
                  <div class="row">
                    <div class="tour-booking-form col-md-12">
                        <form>
                            <div class="row">
                                <div class="col-md-12">
                                  <div class="form-group">
                                    <input type="text" class="form-control" id="uid" placeholder="ID"
                                    readonly>
                                  </div>
                                  <div class="form-group">
                                    <label for="fullname">Full Name:</label>
                                    <input id="name" type="text" class="form-control" name="fullname" required="">
                                  </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                          <input id="email" type="email" class="form-control" name="email" data-parsley-trigger="change" required="">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                    <div class="form-group">
                                       <label for="message">Message:</label>
                                          <textarea id="message" class="form-control" rows="8" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" required=""></textarea>
                                    </div>
                                </div>
                            
                            </div>
                        </form>
                    </div>  
                  </div>
                  <div class="col-auto">
                    <input type="button" value="Update" onclick="update_user();" class="btn btn-warning btn-user"/> 
                    <input type="button" value="Delete" onclick="delete_user();" class="btn btn-danger btn-user"/>   
                </div>
                 <hr>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    
<div class="row">
    <div class="col">
        <div class="card card-stats">
            <div class="card-body">
                <div class="table-responsive">
                    <table id="tb_list" class="table align-items-center table-dark">
                        <tr>
                            <td>#ID</td>
                            <td>Name</td>
                            <td>Email</td>
                            <td>Message</td>
                          </tr>
                </table>
            </div>
            </div>
        </div>
        
    </div>
</div>
</div>

  <!-- Argon Scripts -->
  <!-- Core -->


  
  <script>
    var tbList = document.getElementById('tb_list');
var databaseRef = firebase.database().ref('List_komentar/');
var rowIndex = 1;
databaseRef.once('value', function(snapshot) {
 snapshot.forEach(function(childSnapshot) {
 var childKey = childSnapshot.key;
 var childData = childSnapshot.val();

 var row = tbList.insertRow(rowIndex);
 var cellId = row.insertCell(0);
 var cellName = row.insertCell(1);
 var cellEmail = row.insertCell(2);
 var cellMessage = row.insertCell(3);
 
 cellId.appendChild(document.createTextNode(childKey));
 cellName.appendChild(document.createTextNode(childData.name));
 cellEmail.appendChild(document.createTextNode(childData.email));
 cellMessage.appendChild(document.createTextNode(childData.message));
 rowIndex = rowIndex + 1;
 });
 var table = document.getElementById("tb_list");
 var rows = table.getElementsByTagName("tr");
 for (i = 0; i < rows.length; i++) {
	 var currentRow = table.rows[i];
	 var createClickHandler = function(row) {
	 return function() {
	 var cell1 = row.getElementsByTagName("td")[0];
	 var cell2 = row.getElementsByTagName("td")[1];
	 var cell3 = row.getElementsByTagName("td")[2];
	 var cell4 = row.getElementsByTagName("td")[3];
	 var id = cell1.innerHTML;
	 var name = cell2.innerHTML;
	 var email = cell3.innerHTML;
	 var message = cell4.innerHTML;
	 document.getElementById('uid').value = id;
	 document.getElementById('name').value = name;
	 document.getElementById('email').value = email;
	 document.getElementById('message').value = message;
	 };
	 };
	 currentRow.onclick = createClickHandler(currentRow);
	 }
	});
	 function update_user(){
		 var name = document.getElementById('name').value;
	        var email = document.getElementById('email').value;
	        var message  = document.getElementById('message').value;
	        var uid = document.getElementById('uid').value;

	 var data = {
			 name : name,
		     email : email,
		     message : message
	 }

	 var updates = {};
	 updates['/List_komentar/' + uid] = data;
	 firebase.database().ref().update(updates);

	 alert('Comment updated successfully!');
	 reload_page();
	 }

	 function delete_user(){
	 var uid = document.getElementById('uid').value;

	 firebase.database().ref().child('/List_komentar/' + uid).remove();
	 alert('Comment deleted successfully!');
	 reload_page();
	 }

	 function reload_page(){
	 window.location.reload();
	 }
 </script>

  <script src="vendor/jquery/dist/jquery.min.js"></script>
  <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <script src="js/onAuth.js"></script>
  <script src="js/function.js"></script>
  <!-- Argon JS -->
  <script src="js/argon.js"></script>
</body>

</html>
