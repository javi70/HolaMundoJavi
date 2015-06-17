<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	<h2>Eventos</h2>

	<article>	
		<header>
			<h1>onClick en etiqueta</h1>
		</header>
			
		<div class="cnt_article">
			<!--  metemos el evento en el mismo html -->
			<i class="fa fa-venus-mars fa-4x" onclick="alert('pulsado icono');"></i>
		</div>
		<footer>
			Capitulo 14; pagina 328 
		</footer>		
	</article>

	<article>	
		<header>
			<h1>onClick en el objeto con JavaScript</h1>
		</header>
			
		<div class="cnt_article">
			<!--  asociar evento por JavaScript al objeto -->
			<i class="fa fa-align-justify fa-4x" id="btn_menu"></i>
			<script>
				var btn_menu=document.getElementById('btn_menu');
				btn_menu.onclick=function(){
					alert('Boton pulsado, evento relacionado con JavaScript');
				};
			</script>
		</div>
		<footer>
			Capitulo 14; pagina 328 
		</footer>		
		
	<article>	
		<header>
			<h1>Asociar evento onclick con listener</h1>
		</header>
			
		<div class="cnt_article">
			<!--  asociar evento con listener -->
			<i class="fa fa-align-justify fa-4x"></i>
			<i class="fa fa-align-justify fa-4x"></i>
			<i class="fa fa-align-justify fa-4x"></i>
			<i class="fa fa-align-justify fa-4x"></i>									
			
			<script>
			
				//declaramos una referencia a la funcion
				var referencia_funcion_saluda=function saluda(){
					alert('Hola');
				}
				//coge todos los 'i'
				var listaBotones=document.getElementsByTagName('i');
				//recorro todos los elementos para asociarle el listener a cada uno
				for (i=0; i<listaBotones.length; i++){
					listaBotones[i].addEventListener("click", referencia_funcion_saluda );					
				}

				
			</script>
		</div>
		<footer>
			Capitulo 14; pagina 328 
		</footer>				
	</article>
	
	<article>	
		<header>
			<h1>Mostrar eventos en textarea</h1>
		</header>
			
		<div class="cnt_article">
			<div class="clearfix cnt_cols"> <!--  es clearfix pq tendra cosas flotando -->
				<div class="col1">
					<textarea id="txt" cols="40" rows="20"></textarea>
					<input type="button" id="boton_copiar" value="Copiar contenido">				
				</div>
				<div class="col2">
				
				  <form action="#" method="post" onsubmit="validar(this);return false" name="formulario">
					<input type="button" id="boton" value="pulsame">
					<input type="button" id="clear" value="Limpiar">
					<select id="selec">
						<option value="bio">Bilbao</option>
						<option value="bar">Barakaldo</option>
					</select>
					<input type="text" id="cuadro_texto"/>
					<fieldset>
						<legend>Sexo:</legend>
						<input data-label="hombre" type="radio" name="sex" value="H">Masculino
						<input data-label="mujer" type="radio" name="sex" value="M">Femenino
						<input data-label="indeterminado" type="radio" name="sex" value="I" checked="checked">Indeterminado						
					</fieldset>
					<fieldset>
						<legend>Conocimientos</legend>
			
						<input type="checkbox" name="conocimientos" value="0">HTML<br/>
						<input type="checkbox" name="conocimientos" value="1">JavaScript<br/>
						<input type="checkbox" name="conocimientos" value="2">CSS<br/>
					</fieldset>	
					
					<!--  botones -->
					<input type="submit" value="Guardar">
					<input type="reset" value="Limpiar" onclick="limpiar(this)">
																		
				  </form>
				</div> <!--  col2 -->
			<div id="errores"></div>
			</div> <!--  cnt_cols -->	

			<script>
				function limpiar(formulario){
					var errores=document.getElementById('errores');
					errores.innerHTML='';
					errores.style.visibility='hidden';					
					formulario.reset();
				}
					
				/**
					Validacion del formulario
					Si retorno true se submita
					Si retorno false NO se submita
				*/
				function validar(formulario){
					var resul=false;
					var mensaje='';

					/* aplicar estilos al div errores */
					var errores=document.getElementById('errores');
					errores.style.backgroundColor='#FF8824';
					errores.style.visibility='visible';	
					errores.style.float='left';
					errores.style.width='100%';
					errores.style.padding='10px';
					
					errores.innerHTML='';
					if(!confirm('Desea enviar el formulario?')){
						errores.innerHTML='Envio cancelado';
						return false;						
					}
							
					if(formulario.cuadro_texto.value.length<5){
						mensaje+="El cuadro de texto tiene menos de 5 caracteres<br/>";
						formulario.cuadro_texto.style.backgroundColor='red';
					}
					if(formulario.cuadro_texto.value.length>255){
						mensaje+="El cuadro de texto tiene mas de 255 caracteres<br/>";
						formulario.cuadro_texto.style.backgroundColor='red';
					}

					var numConocimientos=0;
					for(i=0;i<formulario.conocimientos.length;i++){
						if(formulario.conocimientos[i].checked)numConocimientos++;
					}
					
					if((formulario.sex.value=='H')&(numConocimientos<1)){ //sexo Hombre, debe tener al menos 1 conocimiento
						mensaje+="Siendo hombre deberia tener al menos 1 conocimiento<br/>";
					}
					if((formulario.sex.value=='M')&(numConocimientos<2)){ //sexo Mujer, debe tener al menos 2 conocimientos
						mensaje+="Siendo mujer deberia tener al menos 2 conocimientos<br/>";
					}

					errores.innerHTML=mensaje;
					//Si todo es correcto submitar el formulario
					if(mensaje=='')resul=true;
					if(resul)formulario.submit();
					else return resul;
				} // fin de validacion del formulario +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				
				
				//buscar objetos por su ID

				var txt=document.getElementById('txt');
				var boton=document.getElementById('boton');
				var selec=document.getElementById('selec');
			
				boton.onclick=function( event ){
					var coordenadas = event.x + ',' +event.y;
					console.debug('Boton pulsado');
					txt.value+='Boton pulsado en '+ coordenadas + '\n';				
				};
				
				clear.onclick=function( event ){
					console.debug('Boton limpiar');
					txt.value='';				
				};
				
				selec.onchange=function( event ){
					console.debug('Select cambiado');
					var indice = selec.selectedIndex;
					var texto = selec.options[indice].text;
					var valor = selec.options[indice].value;
						
					txt.value+='Opcion cambiada a '+ texto + ' ['+ valor +']\n';						
				};

				//cuando cuadro_texto pierda el foco el contenido pasara a txt
			    var cuadro_texto=document.getElementById('cuadro_texto');
				cuadro_texto.onblur=function( event ){
					console.debug('al perder el foco');
					txt.value+=document.getElementById('cuadro_texto').value+'\n';					
					
				};
				
				//al cambiar el sexo se refleja en el cuadro de eventos
				var sexos=document.getElementsByName('sex');				//recorro todos los elementos para asociarle el listener a cada uno
				var nombreGenero=null;
				var sexoM=null;
				
/*				var referencia_funcion_cambio_sexo=function cambio_sexo(){
					for(var x=0;x<sexos.length;x++){
						if (sexos[x].checked) {
							console.debug('sexo cambiado');
							sexoM=sexos[x].value.toUpperCase(); //paso el sexo a mayusculas por si acaso
							if(sexoM=='H')nombreGenero="Hombre"
							else if(sexoM=='M')nombreGenero="Mujer"
							else nombreGenero="Indeterminado";
							txt.value+='Sexo cambiado a ('+sexos[x].value+') '+nombreGenero+'\n';
				        }
					}
				}
				for (i=0; i<sexos.length; i++){
					sexos[i].addEventListener("click",referencia_funcion_cambio_sexo);									
				}
				/*
				SOLUCION DE RAUL
				for(i=0; i<sexo.length; i++) {
					sexo[i].onchange = function(event) {
						txt.value += 'Has cambiado a (' + this.value + ') ' + this.nextElementSibling.innerHTML + '\n';
					}
				}				
				TAMBIEN SE PODRIA USAR CON DATA-LABEL
				*/
				for(i=0; i<sexos.length; i++) {
					sexos[i].onchange = function(event) {
						var label=this.dataset.label;
						txt.value += 'Has cambiado a (' + this.value + ') ' + label + '\n';
					}
				}				
							
				// al ir chequeando conocimientos aparecen en el cuadro de eventos
				
				conocimientos=document.getElementsByName('conocimientos');
/*				
				var referencia_funcion_conocimientos=function cambio_conocimientos(){
					for(var x=0;x<conocimientos.length;x++){
						console.debug('conocimiento cambiado');						
						if (conocimientos[x].checked)
							txt.value+='Chequeado conocimiento '+conocimientos[x].value+'\n';
						else
							txt.value+='Deschequeado conocimiento '+conocimientos[x].value+'\n';
				     }
					}					
				for (i=0; i<conocimientos.length; i++){
					conocimientos[i].addEventListener("click",referencia_funcion_conocimientos);									
				}
*/				
				//boton copiar contenido 
				// la seleccion funciona bien, el copiar al portapapeles en IE, en Chrome no ni en Firefox
				btn_copiar=document.getElementById('boton_copiar');
				btn_copiar.onclick=function( event ){
					txt.select();
					window.clipboardData.setData("Text", txt.value);
				};
				
				/*
				SOLUCION DE RAUL
				*/
				for(i=0; i<conocimientos.length; i++) {
					conocimientos[i].onchange = function(event) {
						if(this.checked) {
							txt.value += 'Has activado (' + this.value + ') ' + this.nextElementSibling.innerHTML + '\n';
						} else {
							txt.value += 'Has desactivado (' + this.value + ') ' + this.nextElementSibling.innerHTML + '\n';
						}
												
					}
				}
				
			</script>
		</div>
		<footer>
			Capitulo 14; sin referencia
		</footer>				
	</article>	
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>