<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<style>
table td{
	height:50px;
	width:50px;
	font-size: 26px;
	border: 1px solid;
	text-align:center;
	padding-top:10px;
	background-color: #E8E8E8;
}

#numeros{
	float:left;
	margin-right:30px;
}

#numeros td:hover{
	background-color: #FFFFFF;	
}

#numeros td:active{
	background-color: #0000FF;
}

#pantalla textarea{
	width:280px;
}

</style>

<section>
	<article>
		<header>
			<h1>Calculadora en JavaScript</h1>
		</header>
		<div class="cnt_article">
			<div id="pantalla">
				<textarea></textarea>
				
			</div>
			<table id="numeros" class="clearfix">
				<tr>
					<td data-key="number" data-value="1">1</td>
					<td data-key="number" data-value="2">2</td>
					<td data-key="number" data-value="3">3</td>				
				</tr>
				<tr>
					<td data-key="number" data-value="4">4</td>
					<td data-key="number" data-value="5">5</td>
					<td data-key="number" data-value="6">6</td>				
				</tr>
				<tr>
					<td data-key="number" data-value="7">7</td>
					<td data-key="number" data-value="8">8</td>
					<td data-key="number" data-value="9">9</td>				
				</tr>
				<tr>
					<td data-key="number" data-value="0" colspan="3">0</td>
				</tr>
			</table>
			
			<table id="operaciones">
				<tr>
					<td data-key="operator" data-value="+">+</td>
					<td data-key="operator" data-value="-">-</td>
				</tr>
				<tr>
					<td data-key="operator" data-value="/">/</td>
					<td data-key="operator" data-value="%">%</td>
				</tr>
				<tr>
					<td data-key="operator" data-value="*">*</td>
					<td data-key="operator" data-value="=">=</td>
				</tr>
				
			</table>
		</div>
		<footer>	
		Ejemplo de calculadora
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>