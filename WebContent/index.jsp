<jsp:include page="plantillas/head.jsp"></jsp:include>
<jsp:include page="plantillas/nav.jsp"></jsp:include>

<div id="home" class="clearfix">

<!--  Contenido principl de la pagina -->
<section>
	<h1>Pagina Ongi etorri</h1>
	<hr>
	<div id="cnt_dado">
		<div id="dado_afortunado">
			<p class="numero">El afortunado en leer es:</p>	
			<input type="image" src="img/dado.jpg" value="Obtener nuevo afortunad@" 
					id="btn_ganador" name="btn_ganador" onclick="obtener_ganador();"/><br/>
			<label class="numero" id="afortunado">Afortunad@</label>
		</div>
		<div id="tabla_dado">	
			<table border="1" class="tabla_azul">
				<tr>
					<td colspan="4">Profe</td>
				</tr>
				<tr>
					<td>Javier</td>
					<td>Cristina</td>
					<td>Jorge</td>
					<td>Mihai</td>
				</tr>
				<tr>
					<td>Ieltxu</td>
					<td>Aritz</td>
					<td>Ander</td>
					<td>Javi</td>
				</tr>
				<tr>
					<td>Jon</td>
					<td>Raul</td>
					<td>Jaione</td>
					<td>David</td>
				</tr>
				<tr>
					<td>Lara</td>
					<td></td>
					<td>Unai</td>
					<td>Mikel</td>
				</tr>
			</table>
		</div>
	</div>
</section>

<!--  SideBar con contenido no principal de la pagina -->
<aside id="aside_home" class="clearfix">
	<h3>Enlaces de interés:</h3>
	<ul>
		<li><a href="http://caniuse.com/" target="_blank">Can I Use</a></li>
		<li><a href="https://validator.w3.org/" target="_blank">W3c Validator</a></li>
		<li><a href="http://github.com/" target="_blank">GitHub</a></li>
		<li><a href="http://formacion.ipartek.com/campus/" target="_blank">Campus Ipartek</a></li>
		<li><a href="http://librosweb.es/libro/css/" target="_blank">CSS básico</a></li>
		<li><a href="http://librosweb.es/libro/css_avanzado/" target="_blank">CSS Avanzado</a></li>
		<li><a href="http://www.w3schools.com/" target="_blank">W3 Schools</a></li>
		<li><a href="http://es.learnlayout.com/clearfix.html" target="_blank">Clearfix con overflow</a></li>
			
		
	</ul>
</aside>	

	<br/>
	<br/>
	<br/>
  <script src="js/index.js" type="text/javascript"></script>	
  <script>
  	//lamada a la función init() de index.js
  	init();
  </script>
  
 
  
  </div>	<!-- home -->
<jsp:include page="/plantillas/footer.jsp"></jsp:include>