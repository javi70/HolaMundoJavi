<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<div id="cartelera">
	<h1>Cartelera de cine</h1>
	<hr>
	<div class="clearfix">
		<ul data-list="cartelera">
			<li>
				<div class="cartel">
					<a data-role="modal" href="<%=request.getRequestURL()%>#openModal0" title="Ver detalle película">
						<img src="http://www.cinesa.es/Manager/Peliculas/upsdndeestno/cartelera.jpg" alt="Cartel de la película" />
						<div class="titulo"><h3>UPS, donde está Noe?</h3></div>
					</a>
				</div>
				
				
				<!--  ventana modal  -->
				<div id="openModal0" class="modalDialog">
					<div class="ventana_modal">
						<a href="<%=request.getRequestURL()%>#close" title="Cerrar" class="close">X</a>
						<h2 class="titulo_modal">Ficha de la pelicula</h2>
						<img class="caratula_modal" src="http://www.cinesa.es/Manager/Peliculas/upsdndeestno/cartelera.jpg" alt="Cartel de la película" />
						<div class="ficha_modal">
							<p><span class="encabezado_modal">Titulo:</span></p>
							<p>UPS; donde esta Noe</p>
							<p><span class="encabezado_modal">Autor:</span></p>
							<p>Steven Spilberg</p>
							<p><span class="encabezado_modal">Duracion:</span></p>
							<p>120'</p>
						</div>	
					</div>
				</div>
				
				
			</li>
			<li>
				<div class="cartel">			
			
				<a data-role="modal" href="<%=request.getRequestURL()%>#openModal1" title="Ver detalle película">
					<img src="http://www.cinesa.es/Manager/Peliculas/acambiodenada/cartelera.jpg" alt="Cartel de la película" />
					<div class="titulo"><h3>A cambio de nada</h3></div>			
				</a>
				</div>
				
				<!--  ventana modal  -->
				<div id="openModal1" class="modalDialog">
					<div class="ventana_modal">
						<a href="<%=request.getRequestURL()%>#close" title="Cerrar" class="close">X</a>
						<h2 class="titulo_modal">Ficha de la pelicula</h2>
						<img class="caratula_modal" src="http://www.cinesa.es/Manager/Peliculas/acambiodenada/cartelera.jpg" alt="Cartel de la película" />
						<div class="ficha_modal">
							<p><span class="encabezado_modal">Titulo:</span></p>
							<p>A cambio de nada</p>
							<p><span class="encabezado_modal">Autor:</span></p>
							<p>John Ford</p>
							<p><span class="encabezado_modal">Duracion:</span></p>
							<p>127'</p>
						</div>	
					</div>
				</div>				
			</li>
			<li>
				<div class="cartel">			
				<a data-role="modal" href="<%=request.getRequestURL()%>#openModal2" title="Ver detalle película">
					<div><img src="http://www.cinesa.es/Manager/Peliculas/aguastranquilas/cartelera.jpg" alt="Cartel de la película" /></div>
					<div class="titulo"><h3>Aguas tranquilas</h3></div>			
				</a>
				</div>
				
				<!--  ventana modal  -->
				<div id="openModal2" class="modalDialog">
					<div class="ventana_modal">
						<a href="<%=request.getRequestURL()%>#close" title="Cerrar" class="close">X</a>
						<h2 class="titulo_modal">Ficha de la pelicula</h2>
						<img class="caratula_modal" src="http://www.cinesa.es/Manager/Peliculas/aguastranquilas/cartelera.jpg" alt="Cartel de la película" />
						<div class="ficha_modal">
							<p><span class="encabezado_modal">Titulo:</span></p>
							<p>Aguas tranquilas</p>
							<p><span class="encabezado_modal">Autor:</span></p>
							<p>John Wayne</p>
							<p><span class="encabezado_modal">Duracion:</span></p>
							<p>135'</p>
						</div>	
					</div>
				</div>								
			</li>
			<li>
				<div class="cartel">
					<a href="ejemplos/reales/cartelera_detalle.jsp" title="Ver detalle película">
						<img src="http://www.cinesa.es/Manager/Peliculas/upsdndeestno/cartelera.jpg" alt="Cartel de la película" />
						<div class="titulo"><h3>UPS, donde está Noe?</h3></div>
					</a>
				</div>
			</li>
			<li>
				<div class="cartel">			
			
				<a href="ejemplos/reales/cartelera_detalle.jsp" title="Ver detalle película">
					<div><img src="http://www.cinesa.es/Manager/Peliculas/acambiodenada/cartelera.jpg" alt="Cartel de la película" /></div>
					<div class="titulo"><h3>A cambio de nada</h3></div>			
				</a>
				</div>
				
			</li>
			<li>
				<div class="cartel">			
				<a href="ejemplos/reales/cartelera_detalle.jsp" title="Ver detalle película">
					<div><img src="http://www.cinesa.es/Manager/Peliculas/aguastranquilas/cartelera.jpg" alt="Cartel de la película" /></div>
					<div class="titulo"><h3>Aguas tranquilas</h3></div>			
				</a>
				</div>
				
			</li>					
		</ul>
	</div>
</div>

<jsp:include page="/plantillas/foot.jsp"></jsp:include>