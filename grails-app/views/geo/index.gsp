<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Pagos OFF Search</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<%-- aaa zb--%>


 <%-- bbbb --%>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<asset:stylesheet src="animate.css"/>
	<!-- Icomoon Icon Fonts-->
	<asset:stylesheet src="icomoon.css"/>
	<!-- Bootstrap Style -->
	<asset:stylesheet src="bootstrap.css"/>
	<!-- Theme Style -->
	<asset:stylesheet src="style.css"/>
	<!-- Modernizr JS -->
	<asset:javascript src="modernizr-2.6.2.min.js"/>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<asset:javascript src="respond.min.js"/>
	<![endif]-->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRxC6Y4f-j6nECyHWigtBATtJyXyha-XU&libraries=adsense&sensor=true&language=es"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<asset:javascript src="geo.js"/>
	</head>
	<body>
		
<script type="text/javascript">
	$(document).ready(function() {
    load_map();
});
</script>

		<div id="map_canvas" data-minheight="500">
			<div id="fh5co-toggle" class="js-fh5co-toggle to-animate-single"><a href="#fh5co-bio" class="fh5co-active"><i class="icon-align-right"></i></a></div>
			<div id="fh5co-intro">
				<h1><span class="to-animate">Pagos OFF</span></h1>
			</div>
			<div id="social-animate" class="fh5co-social">
				<ul>
					<li><a href="#" class="to-animate"><i class="icon-twitter-with-circle"></i></a></li>
					<li><a href="#" class="to-animate"><i class="icon-facebook-with-circle"></i></a></li>
					<li><a href="#" class="to-animate"><i class="icon-instagram-with-circle"></i></a></li>
				</ul>
			</div>
			<div class="overlay"></div>
		</div>
		<div id="fh5co-bio">

			<div id="fh5co-bio-inner">
			<h1>Pagos OFF Search</h1>
			<p class="to-animate"><small><label>Dirección: </label><br><input class="form-control" type="text" maxlength="100" id="address" placeholder="Dirección" /></small></p>
			<p class="to-animate"><small><label>Rango: </label><br><input class="form-control" type="number" maxlength="100" id="rango" placeholder="Dirección" /></small></p>
			<p ><small><label class="to-animate">Cantidad: </label><br><input class="form-control" type="number" maxlength="100" id="cantidad" placeholder="Dirección" /></small></p>
			<input type="button" id="search" value="Buscar" class="btn btn-primary" />
				
			<table class="unitx3">
			<tr><td class="unitx1"><strong>Latitud:</strong></td><td class="unitx2"><div id="latitude" name="latitude"></div></td></tr>
			<tr><td><strong>Longitud:</strong></td><td><div id="longitude"></div></td></tr>
			</table>
				<p class="to-animate">bla bla bla</p>
				</div>
			</div>
			
			
			<input type='hidden' id='lat' name="lat" value='0'/> 
			<input type='hidden' id='lng' name="lng" value='0'/>
			
			
			<div style="visibility: hidden">
				
				<a id="buscarAgenciasCall" onclick = "${remoteFunction(
          					controller: 'geo', 
          					action: 'buscarAgencias',
          					params: '\'latitud=\' + lat.value  + \'&longitud=\' + lng.value' )}"/>
          					
          					<%--params: '\'latitud=\' + lat.value' --%>
    
    		</div>
		</div>
		
		
		<!-- jQuery -->
		<asset:javascript src="jquery.min.js"/>
		<!-- jQuery Easing -->
		<asset:javascript src="jquery.easing.1.3.js"/>
		<!-- Bootstrap -->
		<asset:javascript src="bootstrap.min.js"/>
		<!-- Waypoints -->
		<asset:javascript src="jquery.waypoints.min.js"/>
		<!-- Main JS -->
		<asset:javascript src="main.js"/>

	
	</body>
</html>

<%-- 
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Geo</title>
</head>
<body>
	
	<g:formRemote 
		name="buscarAgencias" 
		on404="alert('not found!')" 
		update="listaAgencias"
     	url="[controller: 'geo', action:'buscarAgencias']"
     	params= "'\'siteId=\' + this.value'">
     	
    	Latitud: <input name="lat" type="text" />
    	Longitud: <input name="lng" type="text" />
    	<button type="submit" value="Submit">Buscar</button>
	</g:formRemote>
		
	<div id="listaAgencias">
		<g:each in="${agencias}">
			<p>${it.address.address_line}</p>
			<p>${it.description}</p>
			<br>--<br>
		</g:each>
	</div>
	<div id="error"></div>
</body>
</html>
--%>