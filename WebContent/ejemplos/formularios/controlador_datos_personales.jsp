<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Controlador de Datos Personales</h1>

<%
	//Controlador para recoger parametros del formulario de datos_personales.jsp
	
	
	//recoger parametros de la request
	String p1 = (String)request.getParameter("nombre");
	String p2 = (String)request.getParameter("apellidos");
	String p3 = (String)request.getParameter("profesion");
	String p4 = (String)request.getParameter("edad");
	String p5 = (String)request.getParameter("rol");
	
	//recoger parametro de Radio button, es un unico valor
	String pRadio = (String)request.getParameter("sexo");
	
	//recoger parametro de CheckButton, Pueden ser varios valores o ninguno
	//en este caso es un array con varios valores
	String [] pConocimientos = request.getParameterValues("conocimientos");

	
	//pintar los parametros en el html(en pantalla)
	out.print("<p>Nombre: "		+ p1 + "</p>");	
	out.print("<p>Apellido: "	+ p2 + "</p>");
	out.print("<p>Profesion: "	+ p3 + "</p>");
	out.print("<p>Edad: "		+ p4 + "</p>");
	out.print("<p>Rol: "		+ p5 + "</p>");
	out.print("<p>Sexo: "		+ pRadio + "</p>");
	out.print("<p>Conocimientos: </p>");
	
	//comprobar que existan conocimientos
	if ( pConocimientos != null ){
		out.print("<ul>");
		for(int i=0; i < pConocimientos.length ; i++ ){
			out.print("<li>" + pConocimientos[i] +  "</li>");
		}
		out.print("</ul>");
		
	}else{
		out.print("Eres un paleto!!!!");
	}
%>

<jsp:include page="/plantillas/footer.jsp"></jsp:include>