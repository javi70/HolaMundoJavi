<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>
.cnt_article div{
	border: 1px solid green;
	width: 100px;
	height: 100px;
	margin-bottom: 5px;
}

.cnt_article #capa1{
	background-color: green;
	position:fixed;
	bottom:0px;
	left:250px;
}

.cnt_article #capa2{
	background-color: red;
	position:fixed;
	top:500px;
	left:0px;	

}

.cnt_article #capa3{
	background-color: blue;
	position:fixed;
	top:0px;
	left:500px;
}


</style>

<section>
	<article>
		<header>
			<h1>Posicionamiento Fijo</h1>
			<p>Importante especificar los atributos top, bottom, left y right, sino no se ve.</p>
			<p>Se posiciona respecto al navegador y no respecto al padre</p>		
		</header>
		<div class="cnt_article">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>					
		</div>
		<footer>	
		Ejemplo pagina 206
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>