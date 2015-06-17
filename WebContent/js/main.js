/**
*	JavaScript para ejecutar en todas las páginas del proyecto
*	Se carga en footer.jsp después de incluir todas las librerías necesarias de JS
*/

//Se ejecuta cuando todo el html se ha cargado

 $(function() {
	 console.debug('document ready!');
	 
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
    	 
  });