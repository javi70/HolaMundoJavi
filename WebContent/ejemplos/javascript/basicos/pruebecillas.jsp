<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<script>
	window.onresize=function(){
		window.resizeTo(640,480);
	}
	window.onclick=function(){
		window.resizeTo(640,480);
	}
	
</script>		
<section>
	<article>
		<header>
			<h1>P&aacute;gina de pruebas</h1>
		</header>
		<div class="cnt_article">
			<strong>close:</strong><input type="button" id="w_close" value="Cerrar esta ventana">
		</div>
		
		<script>
			var btn_w_close = document.getElementById('w_close');		
			btn_w_close.onclick=function(){
				window.close();
		};

		</script>
		<footer>	
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/foot.jsp"></jsp:include>