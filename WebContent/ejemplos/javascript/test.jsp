<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<script src="js/utilidades.js"></script>
		
<section>
	<article>
		<header>
			<h1>Variables en JavaScript</h1>
		</header>
		<div class="cnt_article"> 
 
		  <div id="qunit"></div>
		  <div id="qunit-fixture"></div>
		  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
		  
		  <script src="../../js/utilidades.js"></script>
		  
		    
		  <script>
		  	//Nuestro código de test
		  	
		  	QUnit.test( "Funciones predefinidas", function( assert ) {
		  		assert.ok( escape('Hola Mundo') == 'Hola%20Mundo'  , "'Hola Mundo' escapado");
		  		assert.ok( escape('Hóla Mundo') == 'H%F3la%20Mundo'  , "'Hóla Mundo' escapado");  		
		
		  		assert.ok((10 + "1") == "101" , "Sin parseInt 10 + \"1\" = 101");
		  		assert.ok((10 + parseInt("1")) == 11 , "Con parseInt 10 + \"1\" = 11");
		  		
		  		assert.ok(isNaN("123abc"), "123abc no es un número");
		  		assert.ok(!isNaN("123"), "123 sí es un número");  
		  		
		  	});
		  	
		  	QUnit.test( "Arrays", function( assert ) {
		  		var jonWaine = new Array ("Jon", "Waine",45);  		
		  		assert.ok(jonWaine[0] == "Jon" , "posicion 0 está 'Jon'");
		  		assert.ok(jonWaine[1] == "Waine" , "posicion 1 está 'Waine'");
		  		assert.ok(jonWaine[2] == 45 , "posicion 2 está 45");  		
				assert.ok(jonWaine.length == 3 , "longitud del array == 3");
				
				//concat
				var otrapeli = new Array("El feo el bueno y el malo",1973,"ni p. idea");
				var arrayconcat = jonWaine.concat(otrapeli);
		  		assert.ok(arrayconcat[0] == "Jon" , "posicion 0 está 'Jon'");
		  		assert.ok(arrayconcat[1] == "Waine" , "posicion 1 está 'Waine'");
		  		assert.ok(arrayconcat[2] == 45 , "posicion 2 está 45");  	
		  		assert.ok(arrayconcat[3] == "El feo el bueno y el malo" , "posicion 3 está 'El feo el bueno y el malo'");
		  		assert.ok(arrayconcat[4] == 1973 , "posicion 4 está 1973");
		  		assert.ok(arrayconcat[5] == "ni p. idea" , "posicion 5 está 'ni p. idea'");  	
		  		assert.ok(arrayconcat.length == 6 , "longitud del array == 6");
				
				//join
				var cadena=jonWaine.join("#");
				assert.ok(cadena == "Jon#Waine#45" , "join # devuelve 'Jon#Waine#45'");
		
				//reverse
				var waineJon=jonWaine.reverse()
		 		assert.ok(waineJon[0] == 45 , "posicion 0 está 45");
		  		assert.ok(waineJon[1] == "Waine" , "posicion 1 está 'Waine'");
		  		assert.ok(waineJon[2] == "Jon" , "posicion 2 está 'Jon'");  		
				assert.ok(waineJon.length == 3 , "longitud del array == 3");
				
				//sort
				var ordenado=jonWaine.sort(); // jonWaine también quedaría ordenado al aplicarle sort
		  		assert.ok(ordenado[0] == 45 , "posicion 0 ORDENADA está 45");
		  		assert.ok(ordenado[1] == "Jon" , "posicion 1 ORDENADA está 'Jon'");
		  		assert.ok(ordenado[2] == "Waine" , "posicion 2 ORDENADA está 'Waine'");  		
				
		  		var arrayDesordenado=[-5,5,3,1,0];
		  		ordenado=arrayDesordenado.sort();
		  		assert.ok(ordenado[0] == -5 , "posicion 0 ORDENADA está -5");
		  		assert.ok(ordenado[1] ==  0 , "posicion 1 ORDENADA está 0");
		  		assert.ok(ordenado[2] ==  1 , "posicion 2 ORDENADA está 1");  		
		  		assert.ok(ordenado[3] ==  3 , "posicion 3 ORDENADA está 3");
		  		assert.ok(ordenado[4] ==  5 , "posicion 4 ORDENADA está 5");
		  		
		  		arrayDesordenado=["b","a","A","h"];
		  		ordenado=arrayDesordenado.sort();
		  		assert.ok(ordenado[0] == "A" , "posicion 0 ORDENADA está 'A'");
		  		assert.ok(ordenado[1] == "a" , "posicion 1 ORDENADA está 'a'");
		  		assert.ok(ordenado[2] == "b" , "posicion 2 ORDENADA está 'b'");
		  		assert.ok(ordenado[3] == "h" , "posicion 3 ORDENADA está 'h'");  		
		
		  		
		  	});
		
		  	QUnit.test( "calcular_entrada(dia,edad)", function( assert ) {
		 		
		 		assert.ok( calcular_entrada('Lunes',34) == 2, "Lunes < 35 años = 2€" );
		 		assert.ok( calcular_entrada('Lunes',35) == 2, "Lunes = 35 años = 2€" );
		 		assert.ok( calcular_entrada('Lunes',36) == 5, "Lunes > 35 años = 5€" );
		 		
		 		assert.ok( calcular_entrada('Martes',0)  == 2, "Martes < 25 años = 2€" ); 		
		 		assert.ok( calcular_entrada('Martes',24) == 2, "Martes < 25 años = 2€" );
		 		assert.ok( calcular_entrada('Martes',25) == 2, "Martes < 25 años = 2€" );		
		 		assert.ok( calcular_entrada('Martes',35) == 5, "Martes > 25 años < 50 años = 5€" );
		 		assert.ok( calcular_entrada('Martes',50) == 5, "Martes > 25 años < 50 años = 5€" ); 		
		 		assert.ok( calcular_entrada('Martes',51) == 7, "Martes > 50 años = 7€" );
				assert.ok( calcular_entrada('Martes',99) == 7, "Martes > 50 años = 7€" );
				
		 		assert.ok( calcular_entrada('Miércoles',17) == 3, "Miércoles < 18 años = 3€" );
		 		assert.ok( calcular_entrada('Miércoles',18) == 3, "Miércoles = 18 años = 3€" );
		 		assert.ok( calcular_entrada('Miércoles',19) == 5, "Miércoles > 18 años < 50 años= 5€" );
		 		assert.ok( calcular_entrada('Miércoles',49) == 5, "Miércoles > 18 años < 50 años= 5€" );
		 		assert.ok( calcular_entrada('Miércoles',50) == 5, "Miércoles > 18 años < 50 años= 5€" );
		 		assert.ok( calcular_entrada('Miércoles',51) == 8, "Miércoles > 51 años = 8€" );
		 		
		 		assert.ok( calcular_entrada('Jueves',17) == 5, "Jueves < 18 años = 5€" );
		 		assert.ok( calcular_entrada('Jueves',18) == 5, "Jueves < 18 años = 5€" );
		 		assert.ok( calcular_entrada('Jueves',19) == 7, "Jueves > 18 años = 7€" );
		
		 		// pruebas para parametros incorrectos
		 		assert.ok( calcular_entrada('Miercoles',50) == 9999, "Miercoles escrito sin acento devuelve 9999");
				assert.ok( calcular_entrada('cualquierdia',undefined) == 8888, "Dia que no existe y edad UNDEFINED devuelve 8888"); 		
				assert.ok( calcular_entrada('Lunes',undefined) == 8888, "Lunes y edad UNDEFINED devuelve 8888");
				assert.ok( calcular_entrada('Lunes',-5) == 8888, "Lunes y edad negativa devuelve 8888")
				assert.ok( calcular_entrada('Lunes',2.5) == 8888, "Lunes y edad con decimales devuelve 8888")
		 	});  	
		  	
		  	QUnit.test( "es_par(numero)", function( assert ) {
		 		
		 		assert.ok( es_par(2)			, "2 es par" );
		 		assert.ok( !es_par(3)			, "3 NO es par" ); //lo negamos para que nos devuelva TRUE
		 		assert.ok( es_par(0)			, "0 es par" );
		// 		assert.ok( !es_par(null)		, "null NO es par" ); //null es par o impar?
				assert.ok( es_par(null)			, "null es par" ); 		
		 		assert.ok( !es_par(undefined)	, "undefined NO es par" ); //undefined es par o impar? 				
		 		assert.ok( !es_par(10.5)		, "10.5 NO es par" );
		 		assert.ok( es_par(10.0)			, "10.0 es par" );
		 		assert.ok( !es_par(-1)			, "-1 NO es par" );
		 		assert.ok( es_par(-2)			, "-2 es par" ); 		
		 	});  	
		  	
		  </script>
 
 		</div>
		<footer>	
		Ejemplos testeo con QUnit
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>
 <!-- 
</body>
</html>
  -->