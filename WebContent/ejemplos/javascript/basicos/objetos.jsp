<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<script src="js/utilidades.js"></script>
		
<style>
body {
	background-image:none!important;
}
</style>

<section>
	<article>
		<header>
			<h1>Objetos básicos de JavaScript</h1>
		</header>
		<div class="cnt_article">
			<p>Meto otra imagen para que funcione en document.images con varias imágenes</p>
			<img src="img/cara2.jpg"/>
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
					<span>* Chrome no funciona <code>resizable=no</code>, por lo cual hemos metido javascript en la nueva ventana (pruebeillas.jsp)</span>
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

			<h2>String</h2>
				<p>Los ejemplos se aplican sobre la cadena: "Ejemplo de Busqueda"
				<ul>
					<li><strong>indexOf("de",1):</strong><span id="str_indexof"></span></li>
					<li><strong>lastIndexOf("de",0):</strong><span id="str_lastindexof"></span></li>				
					<li><strong>substring(2,4):</strong><span id="str_substring"></span></li>
					<li><strong>link():</strong><span id="str_link"></span></li>
					<li><strong>toLowerCase():</strong><span id="str_tolower"></span></li>
					<li><strong>toUpperCase():</strong><span id="str_toupper"></span></li>
					<li><strong>big():</strong><span id="str_big"></span></li>
					<li><strong>small():</strong><span id="str_small"></span></li>
					<li><strong>blink():</strong><span id="str_blink"></span></li>
					<li><strong>italics():</strong><span id="str_italics"></span></li>												
					<li><strong>strike():</strong><span id="str_strike"></span></li>
					<li><strong>sup():</strong><span id="str_sup"></span></li>
					<li><strong>sub():</strong><span id="str_sub"></span></li>
					<li><strong>charAt(5):</strong><span id="str_charat"></span></li>
					<li><strong>fontColor("#556677"):</strong><span id="str_fontcolor"></span></li>
					<li><strong>fontSize(5):</strong><span id="str_fontsize"></span></li>				
				</ul>

			<h2>Date</h2>
			<script>
				//crear objeto fecha actual
				
				var fecha = new Date();
				var fechaGMT= fecha.toGMTString();			
				var fechaLocale = fecha.toLocaleString();

				//escribe en la pagina
				document.write("Fecha actual:<em> " + fecha + "</em><br>" );// es la que da la fecha buena
				document.write("Fecha actual GMT:<em> " + fechaGMT + "</em><br>" );
				document.write("Fecha actual Locale:<em> " + fechaLocale + "</em><br>" );
			
			</script>
			<script>
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
				var opciones="width=640px,height=480px,menubar=no,toolbar=no,resizable=no";
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

				//añadido del profe
				var aImagenes=document.images;
				var mensaje="Este documento tiene " + imagenes.length + " imagenes \n";				
				for (i=0;i<imagenes.length;i++){				
					mensaje+=imagenes[i].src + "\n";
					if(i==5) break; //para que solo muestre las 6 primeras
				}
				span_images.innerHTML=span_images.innerHTML+'<br/> src: '+mensaje;
			
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
				
			/*String*/
				var cadena='Ejemplo de Busqueda';
				document.getElementById('str_indexof').innerHTML=cadena.indexOf('de',1);
				document.getElementById('str_lastindexof').innerHTML=cadena.lastIndexOf('de',0);
				document.getElementById('str_substring').innerHTML=cadena.substring(2,4);
				document.getElementById('str_link').innerHTML=cadena.link();
				document.getElementById('str_tolower').innerHTML=cadena.toLowerCase();
				document.getElementById('str_toupper').innerHTML=cadena.toUpperCase();
				document.getElementById('str_big').innerHTML=cadena.big();
				document.getElementById('str_small').innerHTML=cadena.small();
				document.getElementById('str_blink').innerHTML=cadena.blink();
				document.getElementById('str_italics').innerHTML=cadena.italics();
				document.getElementById('str_strike').innerHTML=cadena.strike();
				document.getElementById('str_sup').innerHTML=cadena.sup();
				document.getElementById('str_sub').innerHTML=cadena.sub();
				document.getElementById('str_charat').innerHTML=cadena.charAt(5);
				document.getElementById('str_fontcolor').innerHTML=cadena.fontcolor('#556677');
				document.getElementById('str_fontsize').innerHTML=cadena.fontsize(5);	
			</script>
		</div>
		<footer>	
		Capítulo 13 pag 306...
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>