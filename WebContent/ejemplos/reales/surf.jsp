<!doctype html>

<html lang="es">

<head>

<!-- Para poner la base del proyecto de forma dinámica -->
<base href="<%=request.getContextPath()%>/">

<meta charset="utf-8">

<title>Página de Surf</title>

<meta name="author" content="Javi">

<!-- ViewPort imprescindible para RWD (Responsive Web Design) -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />

<link rel="stylesheet" type="text/css" href="css/surf.css?v=1.0">

<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->

</head>

<body>

	<div id="head">
		<img src="img/dado.jpg" alt="Logotipo"/>
	</div>
	
	<div id="wrapper_menu">
	
		<div id="menu">
		
			<nav class="clearfix">
				<ul id="menu">
					<li>
						<a href="#">Ejemplos</a>
						<ul>
							<li class="submenu">
								<a href="#">Básicos</a>
								<ul>
									<li><a href="ejemplos/basicos/parrafos.jsp">Párrafos y
											enlaces internos</a></li>
									<li><a href="ejemplos/basicos/block_inline.jsp">Block &amp;
											inline</a></li>
									<li><a href="ejemplos/basicos/listas.jsp">Listas</a></li>
									<li><a href="ejemplos/basicos/tabla.jsp">Tablas</a></li>
									<li><a href="ejemplos/basicos/tabla_avanzada.jsp">Tablas avanzadas</a></li>
								</ul>				
							</li>
							<li>
								<a href="#">Reales</a>
								<ul>
									<li><a href="ejemplos/reales/cartelera_cine.jsp">Cartelera</a></li>					
									<li><a href="ejemplos/reales/cartelera_detalle.jsp">Detalle cartelera</a></li>
									<li><a href="ejemplos/reales/surf.jsp">Surf</a></li>						
								</ul>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">Formularios</a>
						<ul>
							<li><a href="ejemplos/formularios/login.jsp">Login</a></li>
							<li><a href="ejemplos/formularios/datos_personales.jsp">Datos personales</a></li>
							<li><a href="ejemplos/formularios/datalist.jsp">Datalist</a></li>
							<li><a href="ejemplos/formularios/progress_meter.jsp">Progress y meter</a></li>
						</ul>
					</li>
					<li>
						<a href="#">Plugins</a>
						<ul>
							<li><a href="ejemplos/plugins/datatable.jsp">data Tables</a></li>
						</ul>			
					</li>
					<li>
						<a href="#">Etiquetas nuevas de HTML5</a>
						<ul>
							<li><a href="ejemplos/etiquetasnuevas/figure_figcaption.jsp">Figure y figcaption</a></li>
							<li><a href="ejemplos/etiquetasnuevas/hgroup.jsp">Hgroup</a></li>
							<li><a href="ejemplos/etiquetasnuevas/time.jsp">Time</a></li>
							<li><a href="ejemplos/etiquetasnuevas/mark.jsp">Mark</a></li>				
							<li><a href="ejemplos/etiquetasnuevas/audio.jsp">Audio</a></li>
							<li><a href="ejemplos/etiquetasnuevas/video.jsp">Video</a></li>
							<li><a href="ejemplos/etiquetasnuevas/canvas.jsp">Canvas</a></li>												
						</ul>
					</li>
					<li>
						<a href="#">CSS3</a>
						<ul>
							<li><a href="#">Selectores</a>
								<ul>
									<li><a href="ejemplos/css/selectores/atributos.jsp">Atributos</a></li>
									<li><a href="ejemplos/css/selectores/hijos.jsp">Hijos</a></li>											
									<li><a href="ejemplos/css/selectores/adyacentes.jsp">Adyacentes</a></li>
									<li><a href="ejemplos/css/selectores/p_clases.jsp">Pseudo-clases</a></li>
									<li><a href="ejemplos/css/selectores/p_elementos.jsp">Pseudo-elementos</a></li>
									<li><a href="ejemplos/css/selectores/css3.jsp">CSS3</a></li>																								
								</ul>
							</li>
							<li><a href="#">Posicionamiento</a>
								<ul>
									<li><a href="ejemplos/css/posicionamiento/normal.jsp">Normal</a></li>
									<li><a href="ejemplos/css/posicionamiento/relativo.jsp">Relativo</a></li>											
									<li><a href="ejemplos/css/posicionamiento/absoluto.jsp">Absoluto</a></li>
									<li><a href="ejemplos/css/posicionamiento/fijo.jsp">Fijo</a></li>
									<li><a href="ejemplos/css/posicionamiento/inherit.jsp">Inherit</a></li>																							
									<li><a href="ejemplos/css/posicionamiento/float.jsp">Elementos flotantes</a></li>						
								</ul>
							</li>
							<li><a href="#">Técnicas Avanzadas</a>
								<ul>
									<li><a href="ejemplos/css/tecnicas_avanzadas/fontawesome.jsp">Font Awesome</a></li>
									<li><a href="ejemplos/css/tecnicas_avanzadas/sprites.jsp">Sprites</a></li>
									<li><a href="ejemplos/css/tecnicas_avanzadas/iconfont.jsp">Icon Font</a></li>																		
								</ul>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">JavaScript</a>
						<ul>		
							<li><a href="#">Básicos</a>
								<ul>
									<li><a href="ejemplos/javascript/basicos/variables.jsp">Variables</a></li>
									<li><a href="ejemplos/javascript/basicos/objetos.jsp">Objetos</a></li>
									<li><a href="ejemplos/javascript/basicos/date.jsp">Date</a></li>						
								</ul>								
							<li><a href="ejemplos/javascript/eventos.jsp">Eventos</a></li>
							<li><a href="ejemplos/javascript/calculadora.jsp">Calculadora</a></li>	
							<li><a href="ejemplos/javascript/test.jsp">Test QUnit </a></li>							
						</ul>				
					</li>
					
				</ul>
			</nav>		
		
		</div> <!-- #menu -->
	</div>
	
	<div id="content" class="clearfix">
	
		<div id="fila1" class="clearfix">
			<div class="caja1x1">Caja 1:1x1</div>
			<div class="caja2x1">Caja 2:2x1</div>
			<div class="caja1x1">Caja 3:1x1</div>
		</div>
		
		<div id="fila2" class="clearfix">
			<div class="caja1x2">Caja 4:1x2</div>		
			<div class="contenedor2x2 clearfix">		
 				<div class="caja1x1">Caja 5-1:1x1</div>
				<div class="caja1x1">Caja 5-2:1x1</div>
				<div class="caja1x1">Caja 5-3:1x1</div>
				<div class="caja1x1">Caja 5-4:1x1</div>								
			</div>
			<div class="caja1x2">Caja 6:1x2</div>
		</div>			
 		
		<div id="fila3" class="clearfix">
			<div class="caja1x1">Caja 7:1x1</div>
			<div class="caja2x1">Caja 8:2x1</div>
			<div class="caja1x1">Caja 9:1x1</div>
		</div>		
	
	</div>
 	
	<div id="footer">Footer</div>
	
</body>
</html>