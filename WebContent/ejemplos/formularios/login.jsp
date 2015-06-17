<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Formulario de login</h1>

	<form action="ejemplos/formularios/controlador.jsp" method="post">
		<label for="nombre">Dime tu nombre:</label> <input type="text"
			name="nombre" id="nombre" value="" placeholder="Escribe tu nombre" /> <br /> <label for="pass">Escribe
			tu contraseña:</label> <input type="password" name="pass" id="pass" /> <br />

		<input type="submit" value="Acceder" />
	</form>

<jsp:include page="/plantillas/foot.jsp"></jsp:include>