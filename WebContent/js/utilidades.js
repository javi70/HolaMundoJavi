/*
 * Funciones para usar en todo el proyecto
 *
 */

/**
	Ejemplo del libro, pag 283
	Calcula el precio de la entrada del cine de Almendralejo
	@param dia: dia de la semana escrito así ['Lunes','Martes',..,'Domingo']
	@param edad: edad de la persona, formato número entero
	@return precio, o los siguientes códigos:
		9999: error en el día
		8888: error en la edad
*/
function calcular_entrada(dia,edad){
	var resultado=0;

	
	if ((edad<0)||(typeof(edad)=="undefined")||(edad % 1 != 0)) return 8888;
	switch (dia){
		case 'Lunes':
			if (edad>=0 && edad<=35) resultado=2
			else resultado=5;
			break;
		case 'Martes':
			if (edad>=0 && edad<=25) resultado=2
			else if (edad>25 && edad<=50) resultado=5
				else resultado=7;
			break;
		case 'Miércoles':
			if (edad>=0 && edad<=18) resultado=3
			else if (edad>18 && edad<=50) resultado=5
			else resultado=8;
			break;
		case 'Jueves':
			if (edad>=0 && edad<=18) resultado=5
			else resultado=7;
			break;
		case 'Viernes':
		case 'Sábado':
		case 'Domingo':
			resultado=10;
			break;
		default:
			resultado=9999;
		}//switch
	return resultado;
}//end:calcular_entrada


/**
 * Funcion para determinar si el parametro pasado es par o impar
 * @param numero: numero para saber si es par
 * @return: true si es par, false en caso contrario
 */
function es_par(numero){
	result=false;
	
	if ((numero%2)==0) result=true;
	return result;
}
