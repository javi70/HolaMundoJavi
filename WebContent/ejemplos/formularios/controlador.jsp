<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<h1>Controlador de login</h1>


<%
	String nombre=(String)request.getParameter("nombre");
	String pass=(String)request.getParameter("pass");
	out.print("Te llamas "+ nombre +"<br/> y tu password es "+pass);

%>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>