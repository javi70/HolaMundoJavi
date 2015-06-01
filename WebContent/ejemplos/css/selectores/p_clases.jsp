<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>
	#lista li:first-child{ 
		color:blue;
	}
	
	#lista li:last-child{ 
		color:red;
	}
	
	#enlace:link{
		color:red;
	}
	
	#enlace:visited{
		color:yellow;
	}
	
	#txt:hover{
		color:blue;
	}
	
	#txt:active{
		color:cyan;
	}
	
	input:focus{
		color:blue;
	}
	
	p { color: blue; }
	p:lang(es) { color: red; }

</style>

<section>
	<article>
		<header>
			<h1>Pseudo-clases</h1>		
		</header>
	
		<div class="cnt_container">
 
 		<ul id="lista">
 			<li>Lunes</li><!--  sale en azul por ser first-child -->
 			<li>Martes</li>
 			<li>Miércoles</li>
 			<li>Jueves</li>
 			<li>Viernes</li>
 			<li>Sábado</li>
 			<li>Domingo</li><!--  sale en azul por ser last-child --> 			 			 			
 		</ul>
 
 		<hr>
 		<!--  el enlace sale en rojo, al ser vistado debería quedar negro -->
 		<a href="http://www.google.es" target="_blank" id="enlace">Google</a>
 		
 		<hr>
 		<!-- Al pasar el ratón sobre texto se pone azul. al hacer clic se pone cyan -->
 		<span id="txt">Texto</span>
 		
 		<!-- Al escribir en el input el texto es azul -->
 		<input type="text"/>

		<hr>
		
		<p lang="en">Esto es inglés...</p>
		<div lang="fr">
			<p>Esto es francés...</p>
			<p lang="es">Esto es español...</p>
		</div>
		<p lang="en">Esto es inglés...</p>
	 	<div lang="fr">Esto es francés...</div>

		</div>		
		<footer>
		
		</footer>
	</article>


</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>