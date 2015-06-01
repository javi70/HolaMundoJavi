<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style type="text/css">
	p[class="texto"]{
		color:blue;
	}
	
	div[class~="principal"]{
		font-size:20px;
	}
	
	
	a[href$=".com"]{
		color:green;
	}
	
	a[href^="http://www.ya"]{
		color:cyan;
	}
	
	p[class*="ticia"]{
		font-size:15px;
	}
</style>

<section>
	<article>
		<header>
			<h1>Selectores de atributos de CSS</h1>
		</header>
		<div>
			<!--  Ejemplo de [att=val] -->
			<p class="texto">Este texto debería ser azul</p>
			
			<!--  Ejemplo de [att~=val] -->
			<div class="principal">Este texto debería ser de tamaño 20px</div>
			
			<!--  Ejemplo de [att|=val] -->
			
			<!-- FALTA POR HACER -->
			
			
			<!--  Ejemplo de [att$=val] -->
			<a href="http://www.google.com" target="_blank">Este enlace a www.google.com debería ser verde</a>
			<br/>
			
			<!--  Ejemplo de [att^=val] -->
			<a href="http://www.yahoo.es" target="_blank">Este enlace a www.yahoo.es debería ser cyan</a>
			
			<!--  Ejemplo de [att*=val] -->
			<p class="noticia">Este texto debería tener un tamaño de 15px</p>
		</div>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>