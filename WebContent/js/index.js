/* 
	Primer JavaScript para trastear
	
	version: 1.0
	autor: Javi
	fecha: 20150518
	
*/

function init(){
	//alert('onload body ok');


// set o guardar valor	
localStorage["l1"]="pepe";
localStorage.setItem("l2","pepa"); // setItem(key,value)
sessionStorage.setItem("s1","se pierde si cerramos el navegador");

//recuperar valor por su Key
console.debug(localStorage["l1"]);
console.debug(localStorage.getItem("l2"));
console.debug(sessionStorage.getItem("s1"));

//eliminar elemento
//localStorage.removeItem("l2");

	/*
	console.info('Muestra algo que sirva o sea interesante');
	console.debug('Traza para depurar o ver valores de variables');
	console.error('Mensaje para cuando falla alguna cosa');
	*/
	

// array que contiene todas las keys de localStorage	
var listado_keys=Object.keys(localStorage);
console.debug(sessionStorage.getItem("s1"));	

/*Cargamos la lista de tiradas*/

}

/** (Comentario de documentacion)
	Esta función genera un número aleatorio del 1 al 15,
	lo muestra en el 'label' con id='afortunado'
*/

// array con todos los afortunados
var afortunados=['Profe','Javier','Cristina','Jorge','Mihai','Ieltxu','Aritz','Ander','Javi','Jon','Raul','Jaione','David','Lara','X','Unai','Mikel'];

function obtener_ganador(){
	console.debug('click ok');
	
	console.debug(afortunados[0]);
	console.debug(afortunados[15]);
	console.debug('Todos los afortunados son '+afortunados.length);
	for(i=0;i<afortunados.length;i++){
		console.debug('Posición: '+i+' persona: '+afortunados[i]);
	}
	var lb_afortunado=document.getElementById('afortunado');
	var num_aleatorio = Math.floor(Math.random()*(afortunados.length-1));

	//Si sale el 14, como no existe, el afortunado es el profe
	if(num_aleatorio==14)num_aleatorio=0;

	lb_afortunado.innerHTML=num_aleatorio+' - '+afortunados[num_aleatorio];	
	
// Limpiamos el fondo de las celdas
	var celdas=document.getElementsByTagName('td'); //declaramos var para recoger todas las celdas de la pagina
	for(i=0;i<celdas.length;i++){
		celdas[i].style.backgroundColor='white';
	}	
	
	
//Pintamos la celda del afortunado
	celdas[num_aleatorio].style.backgroundColor='red';
	
//Guardamos la tirada

}
