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
	float:left;
}

.cnt_article #capa2{
	background-color: red;
	float:left;
}

.cnt_article #capa3{
	background-color: blue;
	float:left;
	clear:left;
}


</style>

<section>
	<article>
		<header>
			<h1>Elementos flotantes</h1>
		</header>
		<div class="cnt_article">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>	
			<p style="clear: both;" border="1px dotted grey">Parrafo invisible para hacer CLEAR BOTH</p>
		</div>
		<footer>	
		Ejemplo pagina 207
		<a href="http://librosweb.es/libro/css_avanzado/capitulo_1/limpiar_floats.html" target="_blank">Cs Avanzado: Limpiar floats</a><br/>
		<a href="http://es.learnlayout.com/clearfix.html" target="_blank">ClearFix Auto</a><br/>
		<a href="http://jps.com.ve/flotando-elementos-en-css-y-la-magia-de-clearfix/" target="_blank">ClearFix CSS</a>
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>