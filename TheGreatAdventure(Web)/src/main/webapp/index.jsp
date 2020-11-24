<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" id="home">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>The Great Outdoor ADVENTURE</title>

    <!-- Bootstrap -->
    
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
     <!-- The core Firebase JS SDK is always required and must be listed first -->
	<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>
 	<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-database.js"></script>
   	<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-firestone.js"></script>
   <!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
	<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyD_rZvYHAyGnuW5tymRv4Xi6Dd8GdztzdI",
    authDomain: "thegreatadventure.firebaseapp.com",
    databaseURL: "https://thegreatadventure.firebaseio.com",
    projectId: "thegreatadventure",
    storageBucket: "thegreatadventure.appspot.com",
    messagingSenderId: "986270149400",
    appId: "1:986270149400:web:1ba602edd70c4367fc8c6d",
    measurementId: "G-5PVXQJGH6P"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
    </head>
  <body>

    <!-- Section Header -->
    <header class="hero">
     
      <!-- NavBar -->
      <div class="container">
        <nav class="navbar navbar-default">
          <div class="container-fluid">
            <!-- NavBar Mobile -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"><img src="img/logo.png" alt=""></a>
            </div>
            <!-- Akhir NavBar Mobile -->
        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp" class="page-scroll" >Home</a></li>
                <li><a href="detail.jsp" class="page-scroll" target="_blank" >Detail</a></li>
                <li><a href="#about" class="page-scroll">About</a></li>
                <li><a href="#contact" class="page-scroll">Contact</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
       
      </div>
      
      <!-- Akhir NavBar -->

      <div class="container whiteFont">
        <h3>The Great Outdoor</h3>
        <h1>ADVENTURE</h1>
        <div class="row">
          <div class="col-sm-8">
            <p>The Experience of Seeing the Beauty of Stars From the Open Nature and Moments with Loved Ones.</p>
          </div>
        </div>
      </div>
    </header>

    <!-- Akhir Section Header -->

    <!-- Section Ke-2 -->
    <section class="titleColappse">
      <div class="container title">
        <div class="row">
          <div class="col-md-12 positionText text-center">
            <h3>Experience</h3>
            <h1><b>The thrilling experience-outdoors</b></h1>
            <p>Come on try the fun united with nature with us</p>
          </div>
        </div>
      </div>

      <!-- CAROUSEL -->
      <div class="container">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
          </ol>
        
          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img src="img/1.jpg" alt="Camp">
            </div>
            <div class="item">
              <img src="img/2.jpg" alt="hiking">
            </div>
            <div class="item">
              <img src="img/3.jpg" alt="stars">
            </div>
            <div class="item">
              <img src="img/4.jpg" alt="stars">
            </div>
            <div class="item">
              <img src="img/5.jpg" alt="stars">
            </div>
          </div>
        
          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <!-- AKHIR CAROUSEL -->
    </section>
    <!-- Akhir Section 2 -->


    <!-- Section Destination -->
    <section class="Destination" id="about">
      <div class="container">
        <div class="row">
          <div class="col sm 12">
            <h2 class="text-center">About Us</h2>
            <hr>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
            <a href="#star" aria-controls="home" role="tab" data-toggle="tab">
              <div class="activities-grid-item star-gazing"> 
                <i class="glyphicon glyphicon-star"></i>
                <h1>Star Gazing</h1>
              </div>
            </a>
          </div>
          <div class="col-sm-4">
            <a href="#camping" aria-controls="home" role="tab" data-toggle="tab">
              <div class="activities-grid-item camping">
                <i class="glyphicon glyphicon-fire"></i>
                <h1>Camping</h1>
              </div>
            </a>
          </div>
          <a href="#hiking" aria-controls="home" role="tab" data-toggle="tab">
          <div class="col-sm-4">
              <div class="activities-grid-item hiking">
                <i class="glyphicon glyphicon-road"></i>
                <h1>Hiking</h1>
              </div>
          </div>
        </a> 
          <div class="col-sm-12">
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane fade in active" id="star">The Experience of Seeing the Beauty of Stars From the Open Nature.</div>
              <div role="tabpanel" class="tab-pane fade" id="camping">Camping with loved ones at our chosen place will add excitement and moments with loved ones.</div>
              <div role="tabpanel" class="tab-pane fade" id="hiking">Hiking with your friends on the path we have chosen will add to your experience in hiking feel the excitement.</div>
            </div>
          </div>
        </div>
      </div>


    </section>
    <!-- Akhir Section Destination -->




    <!-- Section 3 -->
    <section class="aboutSec" id="about">
      <div class="container">
        <div class="row">
          <div class="col sm 12">
            <h2 class="text-center"></h2>
            
          </div>
        </div>
        <div class="row marginBtm">
          <div class="col-sm-12">
            <p class="text-justify">We are the people who designed the website and chose the destination that you will go to later. We have conducted a survey of places that we recommend, we did it because to add excitement, comfort and to add to your experience of exploring nature in Indonesia.</p>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 text-center">
            <img src="img/founder1.png" alt="IMAGE" class="imgReso">
            <h3>Doni Setiawan</h3>
            <p>4SC2</p>
          </div>
          <div class="col-sm-6 text-center">
            <img src="img/founder2.png" alt="IMAGE" class="imgReso">
            <h3>Rakha Farhan Vahdaputra</h3>
            <p>4SC2</p>
          </div>
        </div>
      </div>
    </section>
    <!-- Akhir Section 3 -->

    <!-- Section 4 -->
    <section class="contact marginBtm" id="contact">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <h2 class="text-center">Contact Us</h2>
              <hr>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-sm-offset-3 text-center">
            <div class="bs-callout bs-callout-warning hidden">
              <h4>Oh snap!</h4>
              <p>This form seems to be invalid :(</p>
            </div>
            
            <div class="bs-callout bs-callout-info hidden">
              <h4>Yay!</h4>
              <p>Everything seems to be ok :)</p>
            </div>

            <form id="myForm" data-parsley-validate="" method="" >
              <label for="fullname">Full Name:</label>
              <input id="name" type="text" class="form-control" name="fullname" required="">
            
              <label for="email">Email:</label>
              <input id="email" type="email" class="form-control" name="email" data-parsley-trigger="change" required="">
              
              <label for="message">Message:</label>
              <textarea id="message" class="form-control" rows="8" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10" required=""></textarea>
              <br>
              <input type="submit" class="btn btn-primary" value="Submit" onclick="save_user">
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- Akhir Section 4 -->
    <footer>
      <p>&copy; 2020 Outdoorsie. All rights reserved.</p>
    </footer>

    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/parsley.min.js"></script>
    <script src="js/script.js"></script>
    <!-- <script src="js/script.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	
  </body>
</html>