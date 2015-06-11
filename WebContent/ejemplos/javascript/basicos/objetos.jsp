<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<script src="js/utilidades.js"></script>
		
<style>
body {
	background: url(none)!important;
}
</style>
<section>
	<article>
		<header>
			<h1>Objetos básicos de JavaScript</h1>
		</header>
		<div class="cnt_article">

			<h2>Window</h2>
			<ul>
				<li>
					<strong>location:</strong><span id="w_location"></span>
				</li>
				<li>
					<strong>name:</strong><span id="w_name"></span>
					<p><mark>document.title</mark> para el nombre de la pestaña</p>
				</li>
				<li>
					<strong>open:</strong>
					<input type="button" id="w_open" value="window.open(url,nombre,opciones)">
				</li>
				
				<li>
					<strong>alert:</strong>
					<input type="button" id="w_alert" value="alert('Esto es una ventana de alert')">
				</li>

				<li>
					<strong>confirm:</strong>
					<input type="button" id="w_confirm" value="confirm('¿Desea eliminar por completo este proyecto?')">
				</li>

				<li>
					<strong>prompt:</strong>
					<input type="button" id="w_prompt" value="prompt('Introduzca su edad','25')">
				</li>

			</ul>
			
			<h2>Document</h2>
			<ul>
				<li>
					<strong>bgColor:</strong>
					<input type="button" id="d_bgcolor" value="Cambiar color de fondo">					
				</li>
				
				<li>
					<strong>images:</strong><span id="d_images"></span>
				</li>

				<li>
					<strong>links:</strong><span id="d_links"></span>
				</li>

			</ul>
			
			<h2>Location</h2>
			<ul>
				<li>
					<strong>host:</strong><span id="l_host"></span>
				</li>
				<li>
					<strong>hostname:</strong><span id="l_hostname"></span>
				</li>
				<li>
					<strong>port:</strong><span id="l_port"></span>
				</li>
				<li>
					<strong>protocol:</strong><span id="l_protocol"></span>
				</li>
				<li>
					<strong>href:</strong><span id="l_href"></span>
				</li>
				<li>
					<strong>pathname:</strong><span id="l_pathname"></span>
				</li>
				<li>
					<strong>reload:</strong>
					<input type="button" id="l_reload" value="Reload">					
				</li>

				<li>
					<strong>replace:</strong>
					<input type="button" id="l_replace" value="Replace">					
				</li>

			</ul>
			
			<h2>Screen</h2>
				<ul>
					<li>
						<strong>availHeight:</strong><span id="s_availheight"></span>
					</li>
					<li>
						<strong>availWidth:</strong><span id="s_availwidth"></span>
					</li>
					<li>
						<strong>height:</strong><span id="s_height"></span>
					</li>
					<li>
						<strong>width:</strong><span id="s_width"></span>
					</li>
					<li>
						<strong>colorDepth:</strong><span id="s_colordepth"></span>
					</li>
					
				</ul>
				
			<h2>Navigator</h2>
				<ul>
					<li>
						<strong>languaje:</strong><span id="n_languaje"></span>
					</li>
					<li>
						<strong>userAgent:</strong><span id="n_userAgent"></span>
					</li>
					<li>
						<strong>cookieEnabled:</strong><span id="n_cookieEnabled"></span>
					</li>
					
				</ul>

			<script type="text/javascript">
			/**********************************************************************************/
			/*Window*/
				document.getElementById('w_location').innerHTML=window.location;
	
				var span_name=document.getElementById('w_name');
				span_name.innerHTML=window.name;
				
				//obtener boton
				var btn_w_open = document.getElementById('w_open');
				btn_w_open.onclick=function(){
					console.info('Hemos hecho click');
							
				//Abrir una nueva ventana
				var opciones="width=640px,height=480px,menubar=notoolbar=noresizable=no";
				window.open('ejemplos/javascript/basicos/pruebecillas.jsp','Página de pruebecillas',opciones);
				};

				//alert
				var btn_w_alert = document.getElementById('w_alert');
				btn_w_alert.onclick=function(){
					alert('Esta es una ventana de alert');
				};
				
				//confirm
				var btn_w_confirm = document.getElementById('w_confirm');
				btn_w_confirm.onclick=function(){
					var respuesta=confirm('¿Desea eliminar por completo este proyecto?');
					if (respuesta==true)alert('Proyecto borrado');
					else alert('Proyecto conservado');
				};
				
				//prompt
				var btn_w_prompt = document.getElementById('w_prompt');
				btn_w_prompt.onclick=function(){
					var respuesta=prompt('Introduzca su edad','25');
					if (respuesta==null) alert('Ha pulsado en cancelar')
					else alert('Su edad es '+respuesta+' años');
				};
				
			/*Document*/
				//bgColor
				var btn_d_bgcolor = document.getElementById('d_bgcolor');
				btn_d_bgcolor.onclick=function(){
					document.bgColor="#88ABCB"; // NO ME FUNCIONA			
				};
 
				//images
				// solo tengo una imagen, no 3
				var span_images=document.getElementById('d_images');
				var imagenes=new Array();
				var i=0;
				while (document.images[i]!=null){
					imagenes[i]="<img src='"+document.images[i].src+"'>";
					i++;
				}
				
				for (i=0;i<3;i++){
					span_images.innerHTML=span_images.innerHTML+imagenes[i]
				}
				
				//links
				var span_links=document.getElementById('d_links');
				var links=new Array();
				var i=0;
				while (document.links[i]!=null){
					links[i]=document.links[i].href;
					i++;
				}
				
				for (i=0;i<3;i++){
					span_links.innerHTML=span_links.innerHTML+links[i]+' <br> ';
				}
				
			/*Location*/
				document.getElementById('l_host').innerHTML=location.host;	
				document.getElementById('l_hostname').innerHTML=location.hostname;
				document.getElementById('l_port').innerHTML=location.port;			
				document.getElementById('l_protocol').innerHTML=location.protocol;
				document.getElementById('l_href').innerHTML=location.href;
				document.getElementById('l_pathname').innerHTML=location.pathname;
				
				//reload
				var btn_l_reload = document.getElementById('l_reload');
				btn_l_reload.onclick=function(){
					location.reload();
				};				
				
				//replace
				var btn_l_replace = document.getElementById('l_replace');
				btn_l_replace.onclick=function(){
					location.replace('http://www.yahoo.es');
				};			
				
			/*Screen*/
				document.getElementById('s_availheight').innerHTML=screen.availHeight;
				document.getElementById('s_availwidth').innerHTML=screen.availWidth;
				document.getElementById('s_height').innerHTML=screen.height;
				document.getElementById('s_width').innerHTML=screen.width;
				document.getElementById('s_colordepth').innerHTML=screen.colorDepth;				
					
			/*Navigator*/
				document.getElementById('n_languaje').innerHTML=navigator.languaje;
				document.getElementById('n_userAgent').innerHTML=navigator.userAgent;
				document.getElementById('n_cookieEnabled').innerHTML=navigator.coockieEnabled;				
			</script>
		</div>
		<footer>	
		Capítulo 13 pag 306...
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>