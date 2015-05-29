<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<section id="progress_meter">

<!--  Contenido principl de la pagina -->

	<h1>Etiquetas nuevas de HTML5</h1>
	<h2>Progress y Meter</h2>


	<a href="http://peter.sh/examples/?/html/meter-progress.html" target="_blank">Ejemplo</a>
	
	
	<p>Progress: 
	<progress id="progreso" max="100" value="20"></progress> 
	<span>20%</span></p>

	<p>Meter: 
	<meter value="2" min="0" max="10">2 de 10</meter>2 de 10<br/>
	<meter value="0.6">60%</meter>60%	
	
	</p>
	
</section>	
<jsp:include page="/plantillas/footer.jsp"></jsp:include>