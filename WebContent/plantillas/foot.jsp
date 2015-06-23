</div> <!--  del content abierto al final de nav -->
<footer id="pie_general">

	<!--  queda fuera de la lista porque no es un enlace, se hace así por semántica  -->
	<span class="copy">&copy;Ipartek Servicios Informáticos</span> 

	<!-- Lista de enlaces de páginas estáticas -->
	<ul id="list_paginas">
		<li><a href="#">Contacto</a></li>
		<li><a href="#">Aviso Legal</a></li>
	</ul>
	
	<!--  Lista de enlaces para redes sociales con awesomefonts -->
	<ul id="list_rrss2">
		<li><a href="http://www.facebook.com" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
		<li><a href="http://www.twitter.com" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>
		<li><a href="http://www.youtube.com" title="Youtube" target="_blank"><i class="fa fa-youtube"></i></a></li>
		<li><a href="http://www.instagram.com" title="Instagram" target="_blank"><i class="fa fa-instagram"></i></a></li>
	</ul>		

	<!-- boton para ir hasta arriba de la pagina -->
	<nav id="nav_top">
		<a href="<%=request.getRequestURL()%>#container" title="Ir a inicio pagina">
			<i class="fa fa-arrow-circle-up fa-4x"></i>
		</a>
	</nav>

</footer>



</div>	<!-- container -->

<!--  jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>

<!-- - jQuery UI :User Interface  -->
<script src="js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>

<!--  Convertir todos los textareas en TinyMce -->
<script src="js/tinymce/tinymce.min.js"></script>

<!-- http://responsive-nav.com/ -->
<script src="js/responsive-nav/responsive-nav.min.js"></script>

<!--  Custom JavaScript despu�s de cargar nuestras librer�as -->
<script src="js/main.js"></script>

</body>
</html>