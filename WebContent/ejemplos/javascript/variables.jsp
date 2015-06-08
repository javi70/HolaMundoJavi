<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<section>
	<article>
		<header>
			<h1>Variables en JavaScript</h1>
		</header>
		<div class="cnt_article">
			<script>
			
				//declaracion de variables globales
				var cantidad1=45;
				var cantidad2=20;

				/*
					Funcion para sumar dos parametros y retornar la suma de ambos
				*/
				function sumar(parametro1, parametro2){
					//Suma de variables y guardar en otra
					var resultado;  //undefined					
					resultado=parametro1+parametro2;
					return resultado; //la funcion devuelve el resultado		
				}
				
				//definir operaciones para la calculadora
				const SUMAR		  = 0;
				const RESTAR	  = 1;
				const MULTIPLICAR = 2;
				const DIVIDIR	  = 3;
				const MODULO	  = 4;
				
				//operaciones para el parametro1
				const INCREMENTO  = 5;
				const DECREMENTO  = 6;
				const ES_PAR	  = 7; //true si es par, false en caso contrario

				
				/**
					Calcula la operacion solicitada para los dos parametros
				*/
				function calculadora(parametro1, parametro2, operacion){
					var resultado=null;
					if(operacion==SUMAR)resultado=parametro1+parametro2;
					if(operacion==RESTAR)resultado=parametro1-parametro2;
					if(operacion==MULTIPLICAR)resultado=parametro1*parametro2;
					if(operacion==DIVIDIR)resultado=parametro1/parametro2;
					if(operacion==MODULO)resultado=parametro1%parametro2;
					if(operacion==INCREMENTO)resultado=parametro1+1;
					if(operacion==DECREMENTO)resultado=parametro1-1;
					if(operacion==ES_PAR){
							if((parametro1%2)==0){resultado=true;}
							if((parametro1%2)!=0){resultado=false;}
							
					}
					return resultado;
				}
				
				//lamamos a la funcion
				
				console.info('El \'resultado\' :\n\t es igual a '+sumar(1,3));
				console.info('Calculadora: 1+4='+calculadora(1,4,SUMAR));
				console.info('Calculadora: 10-67='+calculadora(10,67,RESTAR));
				console.info('Calculadora: INCR 4='+calculadora(4,0,INCREMENTO));
				console.info('Calculadora: DECR 10='+calculadora(10,0,DECREMENTO));
				console.info('Calculadora: ES_PAR(50)='+calculadora(50,0,ES_PAR));
			</script>

		</div>
		<footer>	
		Ejemplo página 263
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>