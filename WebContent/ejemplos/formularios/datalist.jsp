<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<section id="datalist">

<!--  Contenido principl de la pagina -->

	<h1>Etiquetas nuevas de HTML5</h1>
	
	<article>
	
		<header>
			<h1>Datalist</h1>
		</header>
	
		<div class="cnt_article">	
			<p>El soporte del elemento <mark>&lt;datalist&gt;</mark> no está del todo soportado</p>
			<input list="ejemplo_datalist">
			<datalist id="ejemplo_datalist">
				<%
				for (int i=0; i < 200; i++){
			     		out.print("<option value='"+ i +"'>Elemento "+i+"</option>");						
				}
				%>		
			</datalist>
		</div>
	
		<footer>
			<a href="http://caniuse.com/#feat=datalist" target="_blank">Soporte para navegadores - Can I Use</a>
		</footer>
		
	</article>
	
	<article>
		<header>
			<h1>Solución con Select-Options + Plugin</h1>
		</header>
	
		<div class="cnt_article">	
			<p>Podemos simular el comportamiento de un <mark>&lt;datalist&gt;</mark> con un select options usando un plugin de JQuery</p>
			<select id="lista_select" size="10">
				<%
				for (int i=0; i < 200; i++){
			     		out.print("<option value='"+ i +"'>Elemento "+i+"</option>");						
				}
				%>			
			</select>
			
		</div>
	
		<footer>
			<a href="" target="_blank">Referencia: </a>
		</footer>
				
	</article>	
</section>	
<jsp:include page="/plantillas/footer.jsp"></jsp:include>