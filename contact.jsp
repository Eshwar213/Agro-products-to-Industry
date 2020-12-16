<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Contact us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	
body{
  background-color: #87ceeb;
}

	.container {
      padding: 80px 120px;
  }

#googleMap {
      width: 100%;
      height: 400px;
      /*-webkit-filter: grayscale(100%);
       filter: grayscale(100%); */
  }  
</style>
</head>

<body>
<div id="contact" class="container">
  <h2 class="text-center">Contact</h2>
  <p class="text-center"><em>"Customers are our priority"</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Contact us</p>
      <p><span class="glyphicon glyphicon-user"></span>Eshwar Veesam</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Visakhapatnam, India</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +91 9553275679</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: eshwarveesam09@gmail.com</p>
    </div>
  </div>

  <div id="googleMap"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(17.688729, 83.213217);
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCybCBcsXXYeOHg6MFe2K-avRY7lCiBvkk&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<!-- <footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" data-toggle="tooltip" title="Visit w3schools">www.w3schools.com</a></p> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script> -->

</div>
</body>
</html>