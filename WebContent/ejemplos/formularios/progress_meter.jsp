<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Etiquetas nuevas de HTML5</h1>

<section id="progress_meter">
	<article>
		<header>
			<h1>Progress</h1>	
		</header>
		<a href="http://peter.sh/examples/?/html/meter-progress.html" target="_blank">Ejemplo</a>
		<p>Progress: 
		<progress id="progreso" max="100" value="20"></progress> 
		<span>20%</span></p>
	</article>
	
	<article>
		<header>
			<h1>Meter</h1>
		</header>
		<p>Meter: 
		<meter value="2" min="0" max="10">2 de 10</meter>2 de 10<br/>
		<meter value="0.6">60%</meter>60%	
	</article>
</section>	

<jsp:include page="/plantillas/foot.jsp"></jsp:include>