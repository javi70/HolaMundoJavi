<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<section  id="canvas">

<!--  Contenido principl de la pagina -->

	<h1>Etiquetas nuevas de HTML5</h1>
	<h2>Canvas</h2>

	<canvas id="myCanvas"></canvas>

	<script>
		var canvas = document.getElementById("myCanvas");
		var ctx = canvas.getContext("2d");
		ctx.fillStyle = "#FF0000";
		ctx.fillRect(0, 0, 80, 80);
	</script>

</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>