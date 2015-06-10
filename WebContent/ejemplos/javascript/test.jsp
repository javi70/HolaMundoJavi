<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>QUnit Example</title>
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