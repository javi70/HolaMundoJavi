<!doctype html>

<html lang="es">

<head>

  <base href="<%=request.getContextPath()%>/">
  
  <meta charset="utf-8">

  <title>Grid en Bootstrap</title>

  <!-- ViewPort imprescindible para RWD -->	
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />	

  <!--[if lt IE 9]>
  	  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	  <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
  <![endif]-->

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

	<style>
		header{
			background-color:#2D3D4F;
			color:white;
		}
		
		aside{
			background-color:#C0382E;
			color:white;
		}
		
		article{
			background-color:#F3F2F3;
		}
		
		footer{
			background-color:#169F86;
			color:white;
		}
		
		.color1{
			background-color:#2D3D4F;
			color:white;
		}
	</style>  

</head>

<body>
	<header>
		<div class="container">
			<h1>Header</h1>
			<h3>12 columnas</h3>
		</div>
	</header>
	
	<div class="container">
	
		<section class="main row">
			<article class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
				<h2>Articulo - Article</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel diam et nulla varius pellentesque. Maecenas at justo rhoncus, accumsan elit a, semper mauris. Duis vel ante ac neque luctus ultrices non quis felis. Etiam vitae neque aliquam leo fermentum sollicitudin vitae sit amet turpis. In hac habitasse platea dictumst. Proin tempor fringilla nisi, et maximus leo varius ut. Aenean bibendum molestie arcu varius tincidunt. Nullam faucibus quam leo, iaculis malesuada ex pharetra sed. Phasellus eget urna sed tortor accumsan ornare vel ac ex. Maecenas quis diam in tellus elementum ornare at a augue.</p>
			</article>
		
			<aside class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
				<h2>Sidebar - Aside</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel diam et nulla varius pellentesque. Maecenas at justo rhoncus, accumsan elit a, semper mauris. Duis vel ante ac neque luctus ultrices non quis felis. Etiam vitae neque aliquam leo fermentum sollicitudin vitae sit amet turpis. In hac habitasse platea dictumst. Proin tempor fringilla nisi, et maximus leo varius ut. Aenean bibendum molestie arcu varius tincidunt. Nullam faucibus quam leo, iaculis malesuada ex pharetra sed. Phasellus eget urna sed tortor accumsan ornare vel ac ex. Maecenas quis diam in tellus elementum ornare at a augue.</p>		
			</aside>
		</section>
		
		<div class="row">
			<div class="color1 col-xs-12 col-sm-6 col-md-3">
				<h2>Columna</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel diam et nulla varius pellentesque. Maecenas at justo rhoncus, accumsan elit a, semper mauris. Duis vel ante ac neque luctus ultrices non quis felis. Etiam vitae neque aliquam leo fermentum sollicitudin vitae sit amet turpis. In hac habitasse platea dictumst. Proin tempor fringilla nisi, et maximus leo varius ut. Aenean bibendum molestie arcu varius tincidunt. Nullam faucibus quam leo, iaculis malesuada ex pharetra sed. Phasellus eget urna sed tortor accumsan ornare vel ac ex. Maecenas quis diam in tellus elementum ornare at a augue.</p>			
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<h2>Columna</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel diam et nulla varius pellentesque. Maecenas at justo rhoncus, accumsan elit a, semper mauris. Duis vel ante ac neque luctus ultrices non quis felis. Etiam vitae neque aliquam leo fermentum sollicitudin vitae sit amet turpis. In hac habitasse platea dictumst. Proin tempor fringilla nisi, et maximus leo varius ut. Aenean bibendum molestie arcu varius tincidunt. Nullam faucibus quam leo, iaculis malesuada ex pharetra sed. Phasellus eget urna sed tortor accumsan ornare vel ac ex. Maecenas quis diam in tellus elementum ornare at a augue.</p>			
			</div>
			<div class="color1 col-xs-12 col-sm-6 col-md-3">
				<h2>Columna</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel diam et nulla varius pellentesque. Maecenas at justo rhoncus, accumsan elit a, semper mauris. Duis vel ante ac neque luctus ultrices non quis felis. Etiam vitae neque aliquam leo fermentum sollicitudin vitae sit amet turpis. In hac habitasse platea dictumst. Proin tempor fringilla nisi, et maximus leo varius ut. Aenean bibendum molestie arcu varius tincidunt. Nullam faucibus quam leo, iaculis malesuada ex pharetra sed. Phasellus eget urna sed tortor accumsan ornare vel ac ex. Maecenas quis diam in tellus elementum ornare at a augue.</p>			
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<h2>Columna</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel diam et nulla varius pellentesque. Maecenas at justo rhoncus, accumsan elit a, semper mauris. Duis vel ante ac neque luctus ultrices non quis felis. Etiam vitae neque aliquam leo fermentum sollicitudin vitae sit amet turpis. In hac habitasse platea dictumst. Proin tempor fringilla nisi, et maximus leo varius ut. Aenean bibendum molestie arcu varius tincidunt. Nullam faucibus quam leo, iaculis malesuada ex pharetra sed. Phasellus eget urna sed tortor accumsan ornare vel ac ex. Maecenas quis diam in tellus elementum ornare at a augue.</p>			
			</div>			
		</div>
	</div>	
	
	<footer>
		<div class="container">
			<h3>Javi</h3>
		</div>
	</footer>
	
	
<!--  jQuery -->
 <script src="js/jquery-2.1.4.min.js"></script>
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>
