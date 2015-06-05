<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Font Awesome</h1>

<section id="fontawesome">

	<article>
		<header>
			<h2><mark>i</mark> y <mark>span</mark></h2>
		</header>
		<p>Ahora va con <mark>i</mark><i class="fa fa-coffee"></i></p>
		<p>Ahora con un <mark>span</mark><span class="fa fa-coffee"></span>	</p>
	</article>
	
	<article>
		<header>
			<h2>Cambio de color</h2>
		</header>
		<p>Color verde<i class="fa fa-flag-o verde"></i></p>
		<p>Color azul<i class="fa fa-diamond azul"></i></p>
	</article>
	
	<article>
		<header>
			<h2>Cambio de tamaño</h2>
		</header>
		<p>Tamaño 1<i class="fa fa-cart-plus fa-lg"></i></p>
		<p>Tamaño 2<i class="fa fa-diamond fa-2x"></i></p>
		<p>Tamaño 3<i class="fa fa-camera-retro fa-3x"></i></p>
		<p id="tamano">Tamaño especial<i class="fa fa-camera-retro"></i></p>
	</article>

	<article>
		<header>
			<h2>Iconos rotados</h2>
			<i class="fa fa-venus-mars fa-3x fa-spin">Rota</i>
			<i class="fa fa-venus-mars fa-3x fa-rotate-90">Gira 90º</i>
			<i class="fa fa-venus-mars fa-3x fa-flip-vertical">Voltea vertical</i>
			<i class="fa fa-venus-mars fa-3x"></i>									
		</header>
	</article>

	<article>
		<header>
			<h2>Ejemplos varios</h2>
		</header>
			<span class="fa-stack fa-lg">
				<i class="fa fa-square-o fa-stack-2x"></i>
				<i class="fa fa-twitter fa-stack-1x"></i>
				</span>
			fa-twitter on fa-square-o<br>
			<span class="fa-stack fa-lg">
			  <i class="fa fa-circle fa-stack-2x"></i>
			  <i class="fa fa-flag fa-stack-1x fa-inverse"></i>
			</span>
			fa-flag on fa-circle<br>
			<span class="fa-stack fa-lg">
			  <i class="fa fa-square fa-stack-2x"></i>
			  <i class="fa fa-terminal fa-stack-1x fa-inverse"></i>
			</span>
			fa-terminal on fa-square<br>
			<span class="fa-stack fa-lg">
			  <i class="fa fa-camera fa-stack-1x"></i>
			  <i class="fa fa-ban fa-stack-2x text-danger"></i>
			</span>
			fa-ban on fa-camera
		</article>
		
</section>
<footer>
	<a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">FontAwesome</a>
</footer>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>