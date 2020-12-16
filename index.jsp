<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Kissan</title>
<meta name="description" content="A simple grid layout with an initial fullscreen intro" />
<meta name="keywords" content="fullscreen image, grid layout, flexbox grid, transition" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/normalize.css" /> 
 <link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/layout-simple.css" />
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<div id="container" class="container">
<header class="intro">
<img class="intro__image" src="img/header04.jpg" alt="india_1"/>
<div class="intro__content">
<h1 class="intro__title">Agro products to Industry</h1>
<div class="intro__subtitle">
<div class="intro__description">
Direct Selling Marketing
<div class="demos">
<a class="demos__item demos__item--current" href="http://localhost:9090/jsps/kissan1/contact.jsp">Contact</a>
<a class="demos__item" href="http://localhost:9090/jsps/kissan1/about.jsp">About</a>
</div>
</div>
<button class="trigger">
<svg width="100%" height="100%" viewBox="0 0 60 60" preserveAspectRatio="none">
<g class="icon icon--grid">
<rect x="32.5" y="5.5" width="22" height="22"/>
<rect x="4.5" y="5.5" width="22" height="22"/>
<rect x="32.5" y="33.5" width="22" height="22"/>
<rect x="4.5" y="33.5" width="22" height="22"/>
</g>
<g class="icon icon--cross">
<line x1="4.5" y1="55.5" x2="54.953" y2="5.046"/>
<line x1="54.953" y1="55.5" x2="4.5" y2="5.047"/>
</g>
</svg>
<span>View content</span>
</button>
</div>
</div><!-- /intro__content -->
</header><!-- /intro -->
<section class="items-wrap">
<a href="#" class="item">
<img class="item__image" src="img/farmer2.jpg" alt="item01" onclick="doit();"/>

<h2 class="item__title">Farmer</h2></a>

<a href="http://localhost:9090/jsps/kissan1/manufacturer.jsp" class="item">
<img class="item__image" src="img/manufacturer.jpg" alt="item02"/>
<h2 class="item__title">Manufacturer</h2>
</a>
<!-- <a href="admin.html" class="item">
<img class="item__image" src="img/sysadmins.jpg" alt="item03"/>
<h2 class="item__title">Administrator</h2>
</a> -->
</section>
</div><!-- /container -->
<script src="js/classie.js"></script>
<script>
(function() {
var container = document.getElementById( 'container' ),
trigger = container.querySelector( 'button.trigger' );

function toggleContent() {
if( classie.has( container, 'container--open' ) ) {
classie.remove( container, 'container--open' );
classie.remove( trigger, 'trigger--active' );
window.addEventListener( 'scroll', noscroll );
}
else {
classie.add( container, 'container--open' );
classie.add( trigger, 'trigger--active' );
window.removeEventListener( 'scroll', noscroll );
}
}

function noscroll() {
window.scrollTo( 0, 0 );
}

// reset scrolling position
document.body.scrollTop = document.documentElement.scrollTop = 0;

// disable scrolling
window.addEventListener( 'scroll', noscroll );

trigger.addEventListener( 'click', toggleContent );

// For Demo purposes only (prevent jump on click)
[].slice.call( document.querySelectorAll('.items-wrap a') ).forEach( function(el) { el.onclick = function() { return true; } } );
})();
</script>

<script type="text/javascript">
function doit()
 {
   window.location.href  = 'http://localhost:9090/jsps/kissan1/farmer.jsp';
 }
 
 </script>
</body>
</html>
