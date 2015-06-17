<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Datos personales</h1>

	<form name="formDatosPersonales" id="formDatosPersonales" 
      action="ejemplos/formularios/controlador_datos_personales.jsp" method="post" >
      
		<fieldset>
			<legend>Datos Personales</legend>
			<p>
			<label for="nombre">Nombre:</label><br/>
			<input type="text" name="nombre" id="nombre" 
					value="" placeholder="Escribe tu nombre" 
					required pattern="[a-zA-ZáéíóúñÁÉÍÓÚÑ]{2,256}"/>
			</p>
			<p> 
			<label for="apellidos">Apellidos:</label><br/>
			<input type="text" name="apellidos" id="apellidos"
					placeholder="Tus dos apellidos" value=""
					required pattern="[a-zA-ZáéíóúñÁÉÍÓÚÑ]{2,256} ([a-zA-ZáéíóúñÁÉÍÓÚÑ]{2,256}?)" />					
			</p>
			<p>		
			<label for="profesion">Profesión:</label> <br/>
			<input type="text" name="profesion" id="profesion" 
					placeholder="Escribe tu profesión" value="Actor"/>
			</p>
			<p>
			<label for="edad">Edad:</label><br/>
			<input type="text" name="edad" id="edad" 
					placeholder="0-99" />
			</p>
			<p>
			<label for="roll">Roll:</label><br/>
			<input type="text" name="roll" id="roll" 
					value="Usuario" disabled="disabled">
			</p>
			<p>
			Sexo:<br/>
			<input type="radio" name="sexo" value="1" checked="checked">Masculino<br/>
			<input type="radio" name="sexo" value="2">Femenino<br/>
			<input type="radio" name="sexo" value="3">Indeterminado
			</p>		
		</fieldset>
		
		<fieldset>
			<legend>Conocimientos</legend>

			<input type="checkbox" name="conocimientos" value="1" checked="checked">HTML<br/>
			<input type="checkbox" name="conocimientos" value="2">JavaScript<br/>
			<input type="checkbox" name="conocimientos" value="3" checked="checked">CSS<br/>
			<input type="checkbox" name="conocimientos" value="4">JQuery<br/>
			<input type="checkbox" name="conocimientos" value="5">Java<br/>
		</fieldset>
		
		<fieldset>
			<legend>Nacionalidad</legend>
			<select name="nacionalidad" multiple size="10">
				<%
					for (int i=0; i < 100; i++){
				     		out.print("<option value='" + i + "'>Pais "+ i +"</option>");						
					}
				%>				
			</select>
		</fieldset>
		
		<fieldset>
			<legend>Gustos musicales</legend>
			<select name="gustosmusicales" id="gustos_musicales" size="10" multiple="multiple">
				<optgroup label="Rock">
					<option value="Guns and Roses">Guns and Roses</option>
					<option value="Nirvana">Nirvana</option>
					<option value="AC/DC">AC/DC</option>
				</optgroup>
				
				<optgroup label="Pop">
					<option value="Green Day">Green Day</option>
					<option value="Linkin Park">Linkin Park</option>
					<option value="Paramore">Paramore</option>
				</optgroup>
				
				<optgroup label="Clasica">
					<option value="Johann Sebastian Bach">Johann Sebastian Bach</option>
					<option value="Ludwig van Beethoven">Ludwig van Beethoven</option>
					<option value="Wolfgang Amadeus Mozart">Wolfgang Amadeus Mozart</option>
				</optgroup>
			</select>		
	</fieldset>
	
	<fieldset>
	<legend>CV</legend>
			<script src="js/tinymce/tinymce.min.js"></script>
			<script>tinymce.init({selector:'textarea'});</script>			

			<textarea name="cv" id="cv" cols="60" rows="10" placeholder="Introduce tu curriculum en texto plano (minimo 20 lineas)"></textarea>
			
	</fieldset>
		
		<input type="submit" value="Guardar"/>
		<input type="reset" value="Limpiar formulario"/>
	</form>

<jsp:include page="/plantillas/foot.jsp"></jsp:include>