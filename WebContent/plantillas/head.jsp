<!doctype html>

<html lang="es">

<head>

<!-- Para poner la base del proyecto de forma dinámica -->
<base href="<%=request.getContextPath()%>/">

<meta charset="utf-8">

<title>Mi primera pagina WEB</title>

<meta name="description" content="Mi primera pagina en HTML5">
<meta name="author" content="Javi">

<!-- ViewPort imprescindible para RWD (Responsive Web Design) -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />

<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/styles.css?v=1.0">
<link rel="stylesheet" type="text/css" href="js/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<!--  Font Awesome  -->
<link rel="stylesheet" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css">
<!--  Custom IconMoon -->
<link rel="stylesheet" href="fonts/iconmoon/style.css">
<!--  QUnit -->
<link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">

<!-- http://responsive-nav.com/ -->
<link rel="stylesheet" href="js/responsive-nav/responsive-nav.css">

<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->

</head>

<body>
	<div id="container">
	
	<noscript>
	  	<h1>JavaScript NOT ENABLED!!!!</h1>
	  	<p>No tienes disponible JavaScript</p>
  	</noscript>
	
	<header id="head">
	  <div class="clearfix">
		<div id="logo">
			<a href="index.jsp"><img src="img/dado.jpg" alt="Volver a la home" /></a>
		</div>
		<h1>HTML5, CSS3 y JavaScript</h1>
	  </div>
	  
	  <!--  Navegacion menu principal -->
