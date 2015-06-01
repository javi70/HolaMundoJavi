<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>
	p::selection{
		color:red;
	}
	
	#lista li:nth-child(5){
		color:red;
	}
	
	#lista li:nth-last-child(2){
		color:blue;
	}
	
	#lista li:nth-of-type(2){
		color:yellow;
	}
	
</style>

<section>
	<article>
		<header>
			<h1>CSS3</h1>		
		</header>
	
		<div class="cnt_container">
 		<p>Al hacer una seleccion en un parrafo se pondrá de color rojo.</p>
 		<p>lorem ipsum dolor sit amet...</p>
 		<p>El texto seleccionado se pone rojo</p>
 
 		<hr>
 		<p>El elemento 5 es de color rojo</p>
 		<p>El elemento 2 empezando por el final es de color azul</p>
 		<p>El segundo elemento de la lista es de color amarillo</p>
 		<ul id="lista">
 			<li>Lunes</li>
 			<li>Martes</li>
 			<li>Miércoles</li>
 			<li>Jueves</li>
 			<li>Viernes</li>
 			<li>Sábado</li>
 			<li>Domingo</li> 			 			 			
 		</ul>
 		
		</div>
		<footer>
		
		</footer>
	</article>


</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>