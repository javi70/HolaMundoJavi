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


/*****************************************
FECHAS (PAG 316)
******************************************/


/**
* Convierte  fecha a formato español
* 
* @param date objeto tipo Date con la fecha a convertir
* @param formato CORTO: 'dd/mm/aaaa'; LARGO 'el 1 de enero del 2016'
* @returns {String} cadena de texto con la fecha convertida,
* 					si falla retorna null
*/
//formato posibles para las fechas
const CORTO = 'corto';
const LARGO = 'largo';


function convertirFechaJavi(date, formato){
var result=null;
//TODO implementar conversion
var meses=['enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre'];
var dia=date.getDate();
var mes=date.getMonth()+1;

if (date instanceof Date && !isNaN(date.valueOf())){ //vemos si es tipo date y si es un numero
	
	if (dia<9)dia='0'+dia;
	if(mes<9)mes='0'+mes;

	if (formato==CORTO) 
		//		assert.ok(convertirfecha(date,CORTO)== '15/06/2015', 'fecha corta');		
		result=dia+'/'+mes+'/'+date.getFullYear();
	if (formato==LARGO)
		//  	assert.ok(convertirfecha(date,LARGO)== 'el 15 de junio del 2015', 'fecha larga');
		result='el '+date.getDate()+' de '+meses[date.getMonth()]+' del '+date.getFullYear();
}
/*	

//	assert.ok(convertirdate(date,'formato no valido')== null, 'fecha nula');
if ((formato!=CORTO)&&(formato!=LARGO)){
	result=null;
}
*/
if ((date==null)&&(formato==CORTO)){
//	assert.ok(convertirfecha(null,CORTO)== null, 'fecha nula');
	result=null;
}
/*
if((date==undefined)&&(formato==CORTO)){
//	assert.ok(convertirfecha(undefined,CORTO)== null , 'fecha undefined');
	result=null;
}

//	assert.ok(convertirfecha('45/FF/2020',CORTO)== null, 'fecha no correcta');
	if ((formato==CORTO)&&(date.getDate()==45)&&(date.getMonth()=='FF')&&(date.getFullYear()==2020)){
		result=null;
	}
*/
return result;
}

function convertirFecha(date, formato) {

	var resul = null;
	var meses = [ 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
			'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre',
			'Diciembre' ];
	var dia = null;
	var mes = null;

	if (date instanceof Date && !isNaN(date.valueOf())) {

		if (date.getDate() < 10) {
			dia = '0' + date.getDate();
		} else {
			dia = date.getDate();
		}

		if ((date.getMonth() + 1) < 10) {
			mes = '0' + (date.getMonth() + 1);
		} else {
			mes = (date.getMonth() + 1);
		}

		switch (formato) {
		case CORTO:
			resul = dia + '/' + mes + '/' + date.getFullYear();
			break;
		case LARGO:
			resul = "el " + dia + " de " + meses[date.getMonth()] + " del "
					+ date.getFullYear();
			break;
		default:
			resul = null;
		}
	}

	return resul;

}

