<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Etiquetas nuevas de HTML5</h1>
<section  id="canvas">
	<article>
		<header>
			<h1>Canvas</h1>
		</header>
		<canvas id="myCanvas"></canvas>
	
		<script>
			var canvas = document.getElementById("myCanvas");
			var ctx = canvas.getContext("2d");
			ctx.fillStyle = "#FF0000";
			ctx.fillRect(0, 0, 80, 80);
		</script>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>