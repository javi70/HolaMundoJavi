<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>

/* 	contenedor posicionado de forma relativa para que la div#capa2 pueda 
	posicionarse de forma absoluta respeto a este elemento
	Si quitamos el posicionamiento el div#capa2 se posiciona respecto
	al navegador y nos queda arriba del todo  
*/

.cnt_article{ 
	position:relative;
}

.cnt_article div{
	border: 1px solid green;
	width: 100px;
	height: 100px;
	margin-bottom: 5px;
}

.cnt_article #capa1{
	background-color: green;
}

.cnt_article #capa2{
	background-color: red;
	position:absolute;
	top: 50px;
	left: 50px;
}

.cnt_article #capa3{
	background-color: blue;
}


</style>

<section>
	<article>
		<header>
			<h1>Posicionamiento Absoluto</h1>
			<p>Al posicionar un elemento de forma absoluta sale del flujo de la pagina, se posiciona respecto al primer padre que encuentre posicionado de forma NO ESTATICA.
			Si no encuentra nadie se posiciona respecto al navegador.
			</p>		
		</header>
		<div class="cnt_article">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>					
		</div>
		<footer>	
		Ejemplo pagina 203
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>