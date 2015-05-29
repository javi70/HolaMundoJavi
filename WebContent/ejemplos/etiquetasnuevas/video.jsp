<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<section id="video">

<!--  Contenido principl de la pagina -->

	<h1>Etiquetas nuevas de HTML5</h1>
	<h2>Video</h2>
	
	<video controls>
	  <source src="movie.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
	  <source src="movie.webm" type='video/webm; codecs="vp8, vorbis"' />
	</video>
	
	<h2>Surf Search Spot</h2>
	<iframe width="500" height="282" src="https://www.youtube.com/embed/LPDhuthFD98" frameborder="0" allowfullscreen></iframe>
	
	<h2>Video de Vimeo</h2>
	<iframe src="https://player.vimeo.com/video/127983231" width="500" height="282" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="https://vimeo.com/127983231">River</a> from <a href="https://vimeo.com/theherdfilms">The Herd</a> on <a href="https://vimeo.com">Vimeo</a>.</p>


</section>	
<jsp:include page="/plantillas/footer.jsp"></jsp:include>