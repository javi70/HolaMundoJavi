<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>

#calculadora{
	margin:0 278px;
}

#calculadora table{
	border-radius:5px 5px 5px 5px;
}

#calculadora table td{
	height:50px;
	width:50px;
	font-size: 26px;
	border: 1px solid;
	text-align:center;
	padding-top:10px;
	background-color: #E8E8E8;
}

#calculadora #numeros{
	float:left;
	margin-right:30px;
}

#calculadora td:hover{
	background-color: #FFFFFF;	
	cursor:pointer; /* para que aparezca la flechita del ratón*/
}

#calculadora td:active{
	background-color: #0000FF;
}

#calculadora #pantalla{
	width: 253px;
    border: 2px solid #000000;
	border-radius:10px 10px 10px 10px;    
    height: 30px;
    margin-bottom: 20px;
    text-align: right;
    padding:15px 15px 15px 15px;
    font-size:26px;
}

</style>

<section>
	<article>
		<header>
			<h1>Calculadora en JavaScript</h1>
		</header>
		<div class="cnt_article">
		 <div id="calculadora">
			<div id="pantalla">0</div>
			<table id="numeros" class="clearfix">
				<tr>
					<td data-key="number" data-value="1" onClick="escribir(1);">1</td>
					<td data-key="number" data-value="2" onClick="escribir(2);">2</td>
					<td data-key="number" data-value="3" onClick="escribir(3);">3</td>				
				</tr>
				<tr>
					<td data-key="number" data-value="4" onClick="escribir(4);">4</td>
					<td data-key="number" data-value="5" onClick="escribir(5);">5</td>
					<td data-key="number" data-value="6" onClick="escribir(6);">6</td>				
				</tr>
				<tr>
					<td data-key="number" data-value="7" onClick="escribir(7);">7</td>
					<td data-key="number" data-value="8" onClick="escribir(8);">8</td>
					<td data-key="number" data-value="9" onClick="escribir(9);">9</td>				
				</tr>
				<tr>
					<td data-key="number" data-value="0" colspan="3" onClick="escribir(0);">0</td>
				</tr>
			</table>
			
			<table id="operaciones">
				<tr>
					<td data-key="operator" data-value="+" onClick="escribir('+');">+</td>
					<td data-key="operator" data-value="-" onClick="escribir('-');">-</td>
				</tr>
				<tr>
					<td data-key="operator" data-value="/" onClick="escribir('/');">/</td>
					<td data-key="operator" data-value="%" onClick="escribir('%');">%</td>
				</tr>
				<tr>
					<td data-key="operator" data-value="*" onClick="escribir('*');">*</td>
					<td data-key="operator" data-value="C" onClick="borrar();">C</td>
				</tr>
				<tr>
					<td data-key="operator" data-value="=" colspan="2" onClick="calcular();">=</td>
				</tr>				
				
			</table>
		  </div> <!--  calculadora -->
		</div> <!--  cnt_article -->
		<footer>	
		Ejemplo de calculadora
		</footer>
	</article>
</section>

<script>
 
 	/**
 		escribe en #pantalla el parámetro pasado
 		@param valor: valor pasado a escribir
 		@return: no devuelve nada
 	*/
	function escribir(valor){
 		if ($('#pantalla').text()=='0') $('#pantalla').text(valor);
 		else $('#pantalla').text($('#pantalla').text()+valor);			
	}
	
 	/**
		borra el contenido de #pantalla 
		@param: no usa parámetros
		@return: no devuelve nada
	*/
	function borrar(){
		$('#pantalla').text('0');
	}
	
 	/**
		evalúa y muestra en  #pantalla el resultado de lo que contuviera #pantalla
		@param: no usa parámetros
		@return: no devuelve nada
	*/
	function calcular(){
		$('#pantalla').text(eval($('#pantalla').text()));		
	}
	
</script>

<jsp:include page="/plantillas/footer.jsp"></jsp:include>