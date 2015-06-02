<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>


<style>
.cnt_article div{
	border: 1px solid green;
	width: 100px;
	height: 100px;
	margin-bottom: 5px;
	position:relative; 
}

.cnt_article #capa1{
	left: 50px;
	background-color: green;
	top: 50px;
	z-index: 1;
}

.cnt_article #capa2{
	background-color: red;
	z-index: 4; /* para superponerla a las demás */
}

.cnt_article #capa3{
	background-color: blue;
	bottom: 50px;
	left: 50px;
	z-index: 3;	
}


</style>

<section>
	<article>
		<header>
			<h1>Posicionamiento Relativo</h1>
			<p>Posicionamiento relativo a la posición original. Podemos jugar con la propiedad <mark>z-index</mark> para el solapamiento de capas</p>		
		</header>
		<div class="cnt_article">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>					
		</div>
		<footer>	
		Ejemplo página 200
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>