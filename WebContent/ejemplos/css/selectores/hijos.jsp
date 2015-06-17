<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>
	div a {color:blue;} <!-- primero ponemos la regla más general -->			
	div > a { color:red;}	
</style>

<section>
	<article>
		<header>
			<h1>Selector de Hijos</h1>		
		</header>
	
		<div>
			<h3><a href="#">Enlace-1</a></h3>
			<a href="#">Enlace-2</a>
		</div>		
	
		<p> * Cuidado porque el orden de las reglas importa,
			 si lo ponemos al revés se verá todo azul</p> 

		<footer>	
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/foot.jsp"></jsp:include>