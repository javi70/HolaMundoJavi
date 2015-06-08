<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Ejemplo Listas</h1>

<section>
	<article>
		<header>
			<h1>Lista ordenada</h1>
		</header>
		<ol>
			<li>elemento de la lista 1</li>
			<li>elemento de la lista 2</li>
			<li>elemento de la lista 3</li>
			<li>elemento de la lista 4</li>
		</ol>
	</article>
	<article>
		<!-- Lista SIN orden -->
		<header>
			<h1>Lista desordenada</h1>
		</header>
		<ul>
			<li>elemento de la lista 1</li>
			<li>elemento de la lista 2</li>
			<li>elemento de la lista 3</li>
			<li>elemento de la lista 4</li>
		</ul>
	</article>
	<article>
		<header>
		<!-- Lista Definicion -->
			<h1>Lista de definición</h1>
		</header>
		<dl>
			<dt>Reservoir dogs</dt>
			<dd>Dirigida por Quentin Tarantino</dd>
			<dt>Alien 3</dt>
			<dd>Dirigida por David Fincher</dd>
			<!-- ver ejemplo del libro pag 87 -->
		</dl>
	</article>
</section>

<jsp:include page="/plantillas/footer.jsp"></jsp:include>