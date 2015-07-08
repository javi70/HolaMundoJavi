/**
*	JavaScript para ejecutar en todas las páginas del proyecto
*	Se carga en footer.jsp después de incluir todas las librerías necesarias de JS
*/

function llamadaAjax(origen){
	console.info("llamada Ajax");
	var input_usuario=$("#usuario");
	var input_email=$("#email");
	
	//URL donde se encuentra el servicio Ajax (servlet que hemos creado)
	var url = "ControladorAjaxRegistroUsuario";
	
	$.ajax(url, {
		"type": "get", // usualmente post o get
		"success": function(result) {
			console.info("Llego el contenido y no hubo error", result);
			console.info(result);
/*				if ((result)=="OK"){
					console.info("Mostrado OK");
					$("#estado_ok").css("display","inline");
					$("#estado_error").css("display","none");			
				}else{
					$("#estado_ok").css("display","none");
					$("#estado_error").css("display","inline");		
				}
*/

			$(".msg_delete").remove(); // para eliminar los spans creados anteriormente
			//Si usuario != vacio escribir mensaje
			if (result.usuario!="") {
				if (result.libre_usuario){
					input_usuario.after("<span class='msg_delete msg_success'>Usuario disponible</span>");
				}else{
					input_usuario.after("<span class='msg_delete msg_error'>Usuario NO disponible</span>");
				}
			}
			// gestion mensajes email
			if (result.email!="") {
				if (result.libre_email){
					input_email.after("<span class='msg_delete msg_success'>Email disponible</span>");
				}else{
					input_email.after("<span class='msg_delete msg_error'>Email NO disponible</span>");
				}
			}
			
		},
		"error": function(result) {
		console.error("Este callback maneja los errores", result);
		},
		"data": { 	usuario	: input_usuario.val(),
					email	: input_email.val() },
		"async": true,
		});		
} // llamadaAjax

function comprobarPassword(){

	$("#comprobar_pass").remove();
	
	//comprobamos que repass == pass
	if (pass.value==repass.value){
		$("#repass").after("<span id='comprobar_pass' class='msg_success'>Las contraseñas coinciden</span>");
	}else{
		$("#repass").after("<span id='comprobar_pass' class='msg_error'>Las contraseñas NO coinciden</span>");
	}
} // comprobarPassword


function comprobarFormulario(formulario){
//comprueba si los campos estan vacios
	if(formulario.usuario.value.length==0) return false;
	if(formulario.email.value.length==0) return false;
	if(formulario.pass.value.length==0) return false;
	
//ver si hay algun span con class="msg_error"
	if ($(".msg_error").size()==0) {
		formulario.submit();
		return true;
	} 
	return false;
	
} // comprobarFormulario 

//http://addyosmani.com/resources/essentialjsdesignpatterns/book/#modulepatternjavascript
var troll = {			 
		nombre: 'PepeGrog',
		apellido:'mokerf',
		
		init:function(nombre){
			this.nombre=nombre;
		},
		saluda: function(){
			console.info('soy un troll y me llamo '+this.nombre);
		}//este al ser el ultimo no lleva coma
	};

var visitas = {
		url:'url',
		titulo:'titulo',
		fecha:'fecha',
		
		init:function(p_url,p_titulo,p_fecha){
			url=p_url;
			titulo=p_titulo;
			fecha=p_fecha;
		}
}

function ultimas_visitas(){
	
	if (window.sessionStorage && window.localStorage) { 
		var a_visitadas=[''];
		var a_keys=Object.keys(localStorage); //array de keys
		
		console.info('almacenamiento local Soportado');
		//Carga los valores en el array
		for (i=0;i<5;i++){
			a_visitadas[i]=localStorage.getItem(a_keys[i]);		 
		}
		
		//muestra el array en el aside
		for (i=0;i<a_visitadas.length;i++){
			if(a_visitadas[i]!=null){
				paginas=a_visitadas[i].split('/');
				pagina=paginas[paginas.length-1];
				pagina=pagina.substring(0,pagina.lastIndexOf(".")); //para quitar la extension
				if (pagina=='') pagina=paginas[paginas.length-2];
				nodo='<li><a href="'+ a_visitadas[i] +'"</a>'+pagina+'</li>';
				$('#ultimas_visitas').append(nodo);
			}
		}
		 
		//guarda la pagina actual en el array y elimina la mas antigua
		a_visitadas.push(location.href);
		if(a_visitadas.length>5){
			a_visitadas.shift();
		}
		
		//guarda el array en el localStorage
		for(i=0;i<a_visitadas.length;i++){
			localStorage.setItem('v'+i,a_visitadas[i]);
		}
		 
	} else { 
		alert('Lo siento, pero tu navegador no acepta almacenamiento local'); 
	} 			 	
} //ultimas_visitas

//Se ejecuta cuando todo el html se ha cargado

 $(function() {
	 console.debug('document ready!');
	
	 troll.init('ander');
	 troll.saluda();

	 ultimas_visitas();
		
	 console.warn('tinymce deshabilitado');
	tinymce.init({selector:'textarea.curriculum'});

	 
	 /* Inicialización en español para la extensión 'UI date picker' para jQuery. */
	 /* Traducido por Vester (xvester@gmail.com). */
	 (function( factory ) {
	 	if ( typeof define === "function" && define.amd ) {

	 		// AMD. Register as an anonymous module.
	 		define([ "../datepicker" ], factory );
	 	} else {

	 		// Browser globals
	 		factory( jQuery.datepicker );
	 	}
	 }(function( datepicker ) {

	 datepicker.regional['es'] = {
	 	closeText: 'Cerrar',
	 	prevText: '&#x3C;Ant',
	 	nextText: 'Sig&#x3E;',
	 	currentText: 'Hoy',
	 	monthNames: ['enero','febrero','marzo','abril','mayo','junio',
	 	'julio','agosto','septiembre','octubre','noviembre','diciembre'],
	 	monthNamesShort: ['ene','feb','mar','abr','may','jun',
	 	'jul','ago','sep','oct','nov','dic'],
	 	dayNames: ['domingo','lunes','martes','miércoles','jueves','viernes','sábado'],
	 	dayNamesShort: ['dom','lun','mar','mié','jue','vie','sáb'],
	 	dayNamesMin: ['D','L','M','X','J','V','S'],
	 	weekHeader: 'Sm',
	 	dateFormat: 'dd/mm/yy',
	 	firstDay: 1,
	 	isRTL: false,
	 	showMonthAfterYear: false,
	 	yearSuffix: ''};
	 datepicker.setDefaults(datepicker.regional['es']);

	 return datepicker.regional['es'];

	 }));
	 
    //$( "#lista_select" ).combobox();
   // $('#select').filterByText($('#textbox'), false);
	 
 
	 //asociar  el datePicker de Jquery UI a todos los elementos INPUT con atributo DATA-WIDGET que valga CALENDARIO
	 $("input[data-widget='calendario']").datepicker($.datepicker.regional[ "es" ]);
	 
	 console.debug('datePicker habilitado');
	 
	 //menu de falconmasters.com
//	 $(document).ready(main);

	 var contador = 1;
	 console.debug(contador);
//	 function main () {
	 	$('.menu_bar').click(function(){
	 		if (contador == 1) {
	 			$('nav').animate({
	 				left: '0'
	 			});
	 			contador = 0;
	 		} else {
	 			contador = 1;
	 			$('nav').animate({
	 				left: '-100%'
	 			});
	 		}
	 		 console.debug(contador);
	 	});

	 	// Mostramos y ocultamos submenus
	 	$('.submenu').click(function(){
	 		$(this).children('.children').slideToggle();
	 	});
//	 }
    
	 	
		/* REGISTRO USUARIOS control de usuarios existentes */

		//seleccionar usuario del formulario
		$("#form_new_user #usuario").blur(function(){
			//se ejecuta al perder el foco
			llamadaAjax();
		});
		
		//seleccionar usuario del formulario
		$("#form_new_user #email").blur(function(){
			llamadaAjax();
		});	
		
		$("#form_new_user #pass").blur(function(){
			comprobarPassword();
		});	
		
		$("#form_new_user #repass").blur(function(){
			comprobarPassword();
		});	
	
		/* textarea observaciones */
		$("textarea[data-role='observaciones']").keyup(function(event){
			var longitud=event.target.textLength;
			console.info('tecla pulsada ');
			
			if ($('#span_observaciones').length){
				//Si ya existe el span lo actualiza
				$("#span_observaciones").html(longitud + "/256");
			}else{
				//Si no existe lo crea y lo actualiza
				$("<span id='span_observaciones'>"+longitud + "/256"+"</span>").insertAfter($("textarea[data-role='observaciones']"));
			}
		});
		
	}); // end