<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<div id="tabla">
<h1>Tablas</h1>
<table border="1">
	<caption>Horario de cine clásico</caption>
	<tr>
		<th colspan="3">Pasión de los fuertes</th>
	</tr>
	<tr>
		<td>18:00</td>
		<td>20:00</td>
		<td>22:00</td>
	</tr>
	<tr>
		<th colspan="3">Juan Nadie</th>
	</tr>
	<tr>
		<td>15:00</td>
		<td>19:00</td>
		<td>21:00</td>
	</tr>
	<tr>
		<th colspan="3">Un tranvía llamado deseo</th>
	</tr>
	<tr>
		<td>18:00</td>
		<td>20:00</td>
		<td>22:30</td>
	</tr>
</table>
<hr>
<br />
<table border="1">
	<thead>
		<tr>
			<th>Cabecera 1</th>
			<th>Cabecera 2</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td>Pie 1</td>
			<td>Pie 2</td>
		</tr>
	</tfoot>
	<tbody>
		<tr>
			<td>Dato 1</td>
			<td>Dato 2</td>
		</tr>
		<tr>
			<td>Dato 3</td>
			<td>Dato 4</td>
		</tr>
	</tbody>

</table>
</div> <!-- tabla -->

<jsp:include page="/plantillas/footer.jsp"></jsp:include>