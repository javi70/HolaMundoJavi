<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<div id="tabla_avanzada">
<h1>Tabla avanzada</h1>
<table border="1">
	<caption>Horario de cine clásico</caption>
	<tr>
		<th rowspan="2">SALA-1</th>
		<th colspan="3">Pasión de los fuertes</th>
	</tr>
	<tr>
		<td>18:00</td>
		<td>20:00</td>
		<td>22:00</td>
	</tr>
	<tr>
		<th rowspan="2">SALA-2</th>
		<th colspan="3">Juan Nadie</th>
	</tr>
	<tr>
		<td>15:00</td>
		<td>19:00</td>
		<td>21:00</td>
	</tr>
	<tr>
		<th rowspan="2">SALA-3</th>
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
<h1>Extremeña de Teléfonos S.A.</h1>
<table border="1" id="tabla_telefonos">
	<caption>Factura detallada</caption>
	<thead>
		<tr>
			<th colspan="5">EXTREMEÑA DE TELEFONOS</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td colspan="5">Extremeña de Teléfonos le informa que puede
				llamar al número gratuito 666 para cualquier duda o sugerencia que
				tenga acerca de esta factura o de nuestros servicios</td>
		</tr>
	</tfoot>
	<tbody>
		<tr>
			<th colspan="5">Detalle de cuotas</th>
		</tr>
		<tr>
			<th>PERIODO</th>
			<th>CONCEPTO</th>
			<th>IMPORTE</th>
			<th colspan="2">DESCUENTO</th>
		</tr>
		<tr>
			<td rowspan="3" class="celda_centrada">01/05/13 - 01/07/13</td>
			<td>Servicio de identificación de llamadas</td>
			<td class="celda_centrada">12 €</td>
			<td colspan="2" class="celda_centrada">0</td>
		</tr>
		<tr>
			<td>Línea individual</td>
			<td class="celda_centrada">14 €</td>
			<td colspan="2" class="celda_centrada">0</td>
		</tr>
		<tr>
			<td>Bono ciudad</td>
			<td class="celda_centrada">10 €</td>
			<td colspan="2" class="celda_centrada">0</td>
		</tr>
		<tr>
			<td colspan="2">TOTAL:</td>
			<td colspan="3" class="celda_derecha">36 €</td>
		</tr>
		<tr>
			<th colspan="5">Detalle de consumos</th>
		</tr>
		<tr>
			<th>CONCEPTO</th>
			<th>LLAMADAS</th>
			<th>DURACIÓN</th>
			<th>IMPORTE</th>
			<th>DESCUENTO</th>
		</tr>
		<tr>
			<td>LLamada internacional</td>
			<td class="celda_centrada">23</td>
			<td class="celda_centrada">10m 23s</td>
			<td class="celda_centrada">13 €</td>
			<td class="celda_centrada">0</td>
		</tr>
		<tr>
			<td>Llamada metropolitana</td>
			<td class="celda_centrada">23</td>
			<td class="celda_centrada">10m 23s</td>
			<td class="celda_centrada">3,5 €</td>
			<td class="celda_centrada">0</td>
		</tr>
		<tr>
			<td colspan="2">TOTAL:</td>
			<td colspan="3" class="celda_derecha">16,5 €</td>
		</tr>
	</tbody>
</table>
</div>
<!-- tabla_avanzada -->
<jsp:include page="/plantillas/footer.jsp"></jsp:include>