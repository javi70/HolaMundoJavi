<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>
.cnt_article div{
	border: 1px solid green;
	width: 90%;
	margin:0 auto;
	height: 100px;
	padding: 10px;
	margin-bottom: 5px;
}

.cnt_article a{
	border: 5px dotted pink;
}
</style>

<section>
	<article>
		<header>
			<h1>Posicionamiento Normal o Estático</h1>		
		</header>
		<div class="cnt_article">
			<div>Capa 1</div>
			<div>Capa 2 <a href="#">Enlace1</a><a href="#">Enlace2</a></div>
			<div>Capa 3</div>					
		</div>
		<footer>	
		Ejemplo página 198
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>