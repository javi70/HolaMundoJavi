/**
*	JavaScript para ejecutar en todas las páginas del proyecto
*	Se carga en footer.jsp después de incluir todas las librerías necesarias de JS
*/

//Se ejecuta cuando todo el html se ha cargado

 $(function() {
	 console.debug('document ready!');
	 
    $( "#lista_select" ).combobox();
  });