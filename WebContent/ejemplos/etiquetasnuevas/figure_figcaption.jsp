<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Etiquetas nuevas de HTML5</h1>
<!--  Contenido principl de la pagina -->
<section>
	<article>
		<header>
			<h1>Figure y figcaption</h1>		
		</header>
		<figure id="cara">
			<img src="img/micara.jpg" alt="Foto de mi cara" class="fotocara"/>
			<figcaption>Foto de mi cara</figcaption>
		</figure>
		
		<figure id="trescaras">
			<img src="img/cara1.jpg" alt="Foto de cara 1" class="fotocara"/>
			<img src="img/cara2.jpg" alt="Foto de cara 2" class="fotocara"/>
			<img src="img/cara3.jpg" alt="Foto de cara 3" class="fotocara"/>	
			<figcaption>Fotos de mis amigos</figcaption>
		</figure>
	</article>
</section>

<jsp:include page="/plantillas/foot.jsp"></jsp:include>