<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Test para utilidaddes.jsp</title>
  <link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
</head>
<body>

  <div id="qunit"></div>
  <div id="qunit-fixture"></div>
  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  
  <script src="../../js/utilidades.js"></script>
  
    
  <script>
  	//Nuestro código de test

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
 
</body>
</html>
 