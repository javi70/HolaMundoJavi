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
					<textarea id="txt" cols="20" rows="20"></textarea>
				
				</div>
				<div class="col2">
					<input type="button" id="boton" value="pulsame">
					<input type="button" id="clear" value="Limpiar">
					<select id="selec">
						<option value="bio">Bilbao</option>
						<option value="bar">Barakaldo</option>
					</select>
					<input type="text" id="cuadro_texto"/>
					<p>Sexo:<br/>
						<input type="radio" name="sex" value="H" checked="checked">Masculino
						<input type="radio" name="sex" value="M">Femenino
						<input type="radio" name="sex" value="I">Indeterminado
					</p>		
					<fieldset>
						<legend>Conocimientos</legend>
			
						<input type="checkbox" name="conocimientos" value="0" checked="checked">HTML<br/>
						<input type="checkbox" name="conocimientos" value="1">JavaScript<br/>
						<input type="checkbox" name="conocimientos" value="2" checked="checked">CSS<br/>
					</fieldset>					
					
				</div>
			</div>	
			
			<script>
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
				var sexos=document.getElementsByName('sex');
				for(var x=0;x<sexos.length;x++){
					console.debug('sexo '+x);
					sexos[x].onselect=function(event){
						console.debug('sexo cambiado');
						txt.value+=sexos[x].value+'\n';
					}
				}
/*				sexos.onselect=function (event){
					console.debug('onselect sexo');
					for(var i=0;i<sexos.length;i++){
				    	if(sexos[i].checked)
				           	txt.value+=sexos[i].value+'\n';
				    }
					
				//	txt.value+='Sexo cambiado a ('+document.getElementByClass('radio_sexo').value+') '+documet.getElementByClass('radio_sexo').text+'\n';
				};*/
				
				
				// al ir chequeando conocimientos aparecen en el cuadro de eventos
				conocimientos=document.getElementsByName('conocimientos');
				conocimientos.onselect=function(event){
					console.debug('Seleccionado conocimiento');
				}
			</script>
		</div>
		<footer>
			Capitulo 14; si referencia
		</footer>				
	</article>	
</section>

<jsp:include page="../../plantillas/footer.jsp"></jsp:include>