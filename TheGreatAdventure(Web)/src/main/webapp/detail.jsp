<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>The Great Outdoor ADVANTURE</title>

    <!-- Bootstrap -->
    
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
      body {
        font-family: 'Play', sans-serif;
        margin: 0;
      }
      
      * {
        box-sizing: border-box;
      }
      
      img {
        vertical-align: middle;
      }
      
      /* Position the image container (needed to position the left and right arrows) */
      .container {
        position: relative;
      }
      
      /* Hide the images by default */
      .mySlides {
        display: none;
      }
      
      /* Add a pointer when hovering over the thumbnail images */
      .cursor {
        cursor: pointer;
      }
      
      /* Next & previous buttons */
      .prev,
      .next {
        cursor: pointer;
        position: absolute;
        top: 40%;
        width: auto;
        padding: 16px;
        margin-top: -50px;
        color: white;
        font-weight: bold;
        font-size: 20px;
        border-radius: 0 3px 3px 0;
        user-select: none;
        -webkit-user-select: none;
      }
      
      /* Position the "next button" to the right */
      .next {
        right: 0;
        border-radius: 3px 0 0 3px;
      }
      
      /* On hover, add a black background color with a little bit see-through */
      .prev:hover,
      .next:hover {
        background-color: rgba(0, 0, 0, 0.8);
      }
      
      /* Number text (1/3 etc) */
      .numbertext {
        color: #f2f2f2;
        font-size: 12px;
        padding: 8px 12px;
        position: absolute;
        top: 0;
      }
      
      /* Container for image text */
      .caption-container {
        text-align: center;
        background-color: #222;
        padding: 2px 16px;
        color: white;
      }
      
      .row:after {
        content: "";
        display: table;
        clear: both;
      }
      
      /* Six columns side by side */
      .column {
        float: left;
        width: 16.66%;
      }
      
      /* Add a transparency effect for thumnbail images */
      .demo {
        opacity: 0.6;
      }
      
      .active,
      .demo:hover {
        opacity: 1;
      }
      
      
       /* Set the size of the div element that contains the map */
      #map {
        height: 400px;  /* The height is 400 pixels */
        width: 100%;  /* The width is the width of the web page */
        margin-top: 20px;
        margin-bottom: 20px;
       } 
      </style>
      
      
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
              <a class="navbar-brand" href="index.html" target="_blank"><img src="img/logo.png" alt=""></a>
            </div>
            <!-- Akhir NavBar Mobile -->
        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp" target="_blank">Home</a></li>
                <li><a href="detail.jsp">Detail</a></li>
                <li><a href="index.jsp#about" target="_blank">About</a></li>
                <li><a href="index.jsp#contact" target="_blank">Contact</a></li>
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

    <section class="detail">
        <div class="container">
          <div class="row">
            <div class="col-sm-6">
              <h3>Star Gazing</h3>
              <p>Here we offer you a package to enjoy the beauty of the stars from one of the places we highly recommend, from the summit of Mount Bromo. With a price of Rp.400,000 / person / night</p>
              <p>Facilities that we will provide:</p>
              <ul>
                
                <li> Tents </li>
                 <li> Car </li>
                 <li> Sleeping Bag </li>
                 <li> Cookware</li>
              </ul>
              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
                Book Now
              </button>
            </div>
            <div class="col-sm-6">
              <img src="img/10.jpg" alt="STAR">
              <hr>
              <br>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">
              <img src="img/2.jpg" alt="">
            <hr>
            <br>
            </div>
            <div class="col-sm-6">
              <h3>Camping</h3>
              <p>Here we offer you a package to enjoy the natural atmosphere by camping in one of the places that we highly recommend, from the summit of Mount Bromo. With a price of Rp.450,000 / person / night</p>
              <p>Facilities that we will provide:</p>
              <ul>
                
                <li> Tents </li>
                 <li> Car </li>
                 <li> Sleeping Bag </li>
                 <li> Cookware</li>
              </ul>
              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
                Book Now
              </button>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">
              <h3>Hiking</h3>
              <p>We have a hiking trail that is perfect for beginners who want to make the first climb, which is safe, beautiful and also fun to make an experience. We offer a price of Rp.350,000 / person</p>
              <p>Facilities that we will provide:</p>
              <ul>
                <li> Drinking Supplies </li>
                 <li> Guard Post </li>
                 <li> Medic </li>
                 <li> Safety Rope </li>
              </ul>
              <!-- Button trigger modal -->
              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
                Book Now
              </button>

              <!-- Modal -->
              <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb30 text-center">
                            <h2>Travel Reservation Booking Form</h2>
                        </div>
                      </div>
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb30">
                            <div class="tour-booking-form">
                                <form>
                                    <div class="row">
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                            <h4 class="tour-form-title">Your Travel Plan Detail</h4>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label required" for="travel">Travel Package</label>
                                                    <select id="travel" name="select" class="form-control" onchange="dataChange()">
                                                        <option value="">Choose Package</option>
                                                        <option value="Hiking">Hiking</option>
                                                        <option value="Camping">Camping</option>
                                                        <option value="Star Gazing">Star Gazing</option>
                                                    </select>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class="control-label required" for="select">Number of Persons:</label>
                                                <input id="nperson" type="number" placeholder="Persons" class="form-control" onchange="dataMultiple()" required>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class="control-label required" for="select">Budgets</label>
                                                <input id="price" type="text" placeholder="Price" class="form-control" readonly required>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label required" for="select">Total</label>
                                                <input id="total" type="text" placeholder="Total Price" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt30">
                                            <h4 class="tour-form-title">Your Travel Plan Detail</h4>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class="control-label" for="name">Name</label>
                                                <input id="name" type="text" placeholder="First Name" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class="control-label" for="email"> Email</label>
                                                <input id="email" type="text" placeholder="xxxx@xxxx.xxx" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="phone"> Phone</label>
                                                <input id="phone" type="text" placeholder="+62 xxx xxxx xxxx" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="country">Country</label>
                                                <input id="country" type="text" placeholder="Country" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div> 
                        </div>
                    </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <input type="submit" value="Save" onclick="save_user();" class="btn btn-primary btn-user btnblock" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
                <img src="img/hiking.png" alt="">
                <hr>
                <br>
            </div>
          </div>
        </div>
    </section>
    <!-- Akhir Section 4 -->  	
    
<!-- SlideShow -->
<section class="slideShow">
<div class="container" style="margin-bottom: 20px;">
  <h2 style="text-align:center">Slideshow Gallery From our Customer</h2>
    <div class="mySlides">
      <div class="numbertext">1 / 6</div>
      <img src="img/6.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">2 / 6</div>
      <img src="img/7.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">3 / 6</div>
      <img src="img/8.jpg" style="width:100%">
    </div>
      
    <div class="mySlides">
      <div class="numbertext">4 / 6</div>
      <img src="img/9.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">5 / 6</div>
      <img src="img/2.jpg" style="width:100%">
    </div>
      
    <div class="mySlides">
      <div class="numbertext">6 / 6</div>
      <img src="img/camping.png" style="width:100%">
    </div>
      
    <a class="prev" onclick="plusSlides(-1)"></a>
    <a class="next" onclick="plusSlides(1)"></a>

    <div class="caption-container">
      <p id="caption"></p>
    </div>

    <div class="row">
      <div class="column">
        <img class="demo cursor" src="img/6.jpg" style="width:100%" onclick="currentSlide(1)" alt="Star Gizing at Bromo">
      </div>
      <div class="column">
        <img class="demo cursor" src="img/7.jpg" style="width:100%" onclick="currentSlide(2)" alt="Hiking Track">
      </div>
      <div class="column">
        <img class="demo cursor" src="img/8.jpg" style="width:100%" onclick="currentSlide(3)" alt="Top View Hiking">
      </div>
      <div class="column">
        <img class="demo cursor" src="img/9.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
      </div>
      <div class="column">
        <img class="demo cursor" src="img/2.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
      </div>    
      <div class="column">
        <img class="demo cursor" src="img/camping.png" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
      </div>
    </div>
  </div>
</section>

<!-- Akhir SlideShow -->  

<section class="maps">
 <div class="container">
 <h3>Our Location</h3>
    <!--The div element for the map -->
    <div id="map"></div>
    <script>
// Initialize and add the map
function initMap() {
  // The location of Uluru
  var uluru = {lat: -7.940539, lng: 112.6966542};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 10, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}
    </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD_rZvYHAyGnuW5tymRv4Xi6Dd8GdztzdI&callback=initMap">
    </script>
 </div>
</section>
</body>


    <footer>
      <p>&copy; 2020 Outdoorsie. All rights reserved.</p>
    </footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- <script src="js/script.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <script>
      
      var databaseRefBook = firebase.database().ref('List_booking/');
      function save_user(){
        var travel = document.getElementById('travel').value;
        var nperson = document.getElementById('nperson').value;
        var price  = document.getElementById('price').value;
        var total = document.getElementById('total').value;
        var name = document.getElementById('name').value;
        var email = document.getElementById('email').value;
        var phone = document.getElementById('phone').value;
        var country = document.getElementById('country').value;

        var uid = firebase.database().ref().child('List_booking').push().key;

        var data = {
          travel : travel,
          nperson : nperson,
          price : price,
          total : total,
          name : name,
          email : email,
          phone : phone,
          country : country
        }

        var updates = {};
        updates['/List_booking/' + uid] = data;
        firebase.database().ref().update(updates);
        document.getElementById('travel').value = "";
        document.getElementById('nperson').value = "";
        document.getElementById('price').value = "";
        document.getElementById('total').value = "";
        document.getElementById('name').value = "";
        document.getElementById('email').value = "";
        document.getElementById('phone').value = "";
        document.getElementById('country').value = "";
        alert('Booking Successfully!');
        reload_page();
      }

      function reload_page(){
	    window.location.reload();
	    }
      
    </script>

    <script>
      function dataChange()
      {
        var a = document.getElementById('travel').value;
        if (a==="Hiking") {
          var string = "350000";
        } else if(a==="Camping"){
          var string = "450000";
        } else if(a==="Star Gazing"){
          var string = "400000";
        } else {
          var string = "0";
        }

        document.getElementById('price').value=string;
      }
      
      function dataMultiple(){
    	  var x = document.getElementById('nperson').value;
    	  var y = document.getElementById('price').value;
    	  
    	  var string = x*y;
    	  
    	  document.getElementById('total').value=string;
      }
    </script>
    
      
      <script>
      // Slideshow
      var slideIndex = 1;
      showSlides(slideIndex);
      function plusSlides(n) {
        showSlides(slideIndex += n);
      }
      function currentSlide(n) {
        showSlides(slideIndex = n);
      }  
      function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        captionText.innerHTML = dots[slideIndex-1].alt;
      }
      </script>
  </body>
</html>