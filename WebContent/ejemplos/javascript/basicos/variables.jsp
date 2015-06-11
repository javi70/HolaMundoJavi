<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<script src="js/utilidades.js"></script>
		
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
					
/* SWITCH					
					switch (operacion){
						case SUMAR:resultado=parametro1+parametro2;
								break;
						case RESTAR:resultado=parametro1-parametro2;
								break;
						case MULTIPLICAR:resultado=parametro1*parametro2;
								break;
						case DIVIDIR:resultado=parametro1/parametro2;
								break;
						case MODULO:resultado=parametro1%parametro2;
								break;
						case INCREMENTO:resultado=++parametro1;
								break;
						case DECREMENTO:resultado=--parametro1;
								break;
						case ES_PAR:
								resultado=false;
								if((parametro1%2)==0)resultado=true;
								break;
					}
*/
/* IF ELSE */

					if(operacion==SUMAR){
						resultado=parametro1+parametro2;
					}
					else if(operacion==RESTAR){
						resultado=parametro1-parametro2;
					}
					else if(operacion==MULTIPLICAR){
						resultado=parametro1*parametro2;
					}
					else if(operacion==DIVIDIR){
						resultado=parametro1/parametro2;
					}
					else if(operacion==MODULO){
						resultado=parametro1%parametro2;
					}
					else if(operacion==INCREMENTO){
						parametro1++;
						resultado=parametro1;
					}
					else if(operacion==DECREMENTO){
						resultado=--parametro1;
					}
					else if(operacion==ES_PAR){
						if((parametro1%2)==0){
							resultado=true;
						}
						else if((parametro1%2)!=0){
							resultado=false;
						}	
					}
					else{
						console.error('Operacion no soportada: '+operacion);
					}

/* IF
					if(operacion==SUMAR)resultado=parametro1+parametro2;
					if(operacion==RESTAR)resultado=parametro1-parametro2;
					if(operacion==MULTIPLICAR)resultado=parametro1*parametro2;
					if(operacion==DIVIDIR)resultado=parametro1/parametro2;
					if(operacion==MODULO)resultado=parametro1%parametro2;
					if(operacion==INCREMENTO){
						parametro1++;
						resultado=parametro1;
					}
					if(operacion==DECREMENTO)resultado=--parametro1;
					if(operacion==ES_PAR){
							if((parametro1%2)==0){resultado=true;}
							if((parametro1%2)!=0){resultado=false;}
							
					}			
				*/
					return resultado;
				}
				
				
				/** 
					Devuelve true si la letra es una vocal
					@param letra: letra a comprobar
					@return: true si es vocal, false en caso contrario
				*/
				function es_vocal(letra){
					var resultado=false;
				
					//pasamos la variable a minusculas
					//lo quitamos porque da error cuando letra es un numero
					//letra=letra.toLowerCase(); 
					
					switch (letra){
					/*
						case 'a':
							resultado=true;
							break;
						case 'e':
							resultado=true;
							break;
  						case 'i':
							resultado=true;
							break;
						case 'o':
							resultado=true;
							break;
						case 'u':
							resultado=true;
							break;
					*/
						case 'a':
						case 'e':
						case 'i':
						case 'o':
						case 'u':
						case 'A':
						case 'E':
						case 'I':
						case 'O':
						case 'U':
							resultado=true;
							break;
						default:resultado=false; //puede sobrar ya que el valor por defecto de resultado es false
					} //switch
					return resultado;
				}
				// end:es_vocal

				
				//lamamos a la funcion calculadora
				
				console.info('El \'resultado\' :\n\t es igual a '+sumar(1,3));
				console.info('Calculadora: 1+4='+calculadora(1,4,SUMAR));
				console.info('Calculadora: 10-67='+calculadora(10,67,RESTAR));
				console.info('Calculadora: INCR 4='+calculadora(4,null,INCREMENTO));
				console.info('Calculadora: DECR 10='+calculadora(10,null,DECREMENTO));
				console.info('Calculadora: ES_PAR(50)='+calculadora(50,0,ES_PAR));
				console.info('Calculadora: ES_PAR(13)='+calculadora(13,0,ES_PAR));
				
				//lamamos a la funcion es_vocal
				
				console.info('Es vocal "a"? '+es_vocal('a'));
				console.info('Es vocal "e"? '+es_vocal('e'));
				console.info('Es vocal "A"? '+es_vocal('A'));
				console.info('Es vocal "13"? '+es_vocal(13));
				console.info('Es vocal "null"? '+es_vocal('null'));
				console.info('Es vocal "undefined"? '+es_vocal('undefined'));
				console.info('Es vocal "0.5"? '+es_vocal(0.5));
				console.info('Es vocal "and"? '+es_vocal('and'));
				console.info('Es vocal "n"? '+es_vocal('n'));
				console.info('Es vocal "ñ"? '+es_vocal('ñ'));				
	
				//llamamos a la funcion calcular_entrada
				console.info('Miércoles - 50 años: '+calcular_entrada('Miércoles',50)+'€');
				console.info('Lunes - 35 años: '+calcular_entrada('Lunes',35)+'€');	
				console.info('Domingo - 0 años: '+calcular_entrada('Domingo',0)+'€');
				console.info('Jueves - 17 años: '+calcular_entrada('Jueves',17)+'€');
				document.write('Miércoles - 50 años: '+calcular_entrada('Miércoles',50)+'€<br>');
				document.write('Lunes - 35 años: '+calcular_entrada('Lunes',35)+'€<br>');	
				document.write('Domingo - 0 años: '+calcular_entrada('Domingo',0)+'€<br>');
				document.write('Jueves - 17 años: '+calcular_entrada('Jueves',17)+'€<br>');	
				//habría que ir testeando todos los casos posibles y que siempre salga true
				console.info(' Lunes < 35 años = 2€' +(calcular_entrada('Lunes',34)==2));
				
			</script>
		</div>
		<footer>	
		Ejemplos páginas 263, 283
		</footer>
	</article>
</section>
<jsp:include page="/plantillas/footer.jsp"></jsp:include>