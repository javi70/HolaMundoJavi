package com.ipartek.formacion.holaclase.poo.ejemplos;

public class Excepcion1 {
	// propiedades necesarias
	 
	 static int array_corto[] = new int[5];
	 
	 
	 public static void main(String args[]){
	 
		 try {
		 
			 System.out.println();
			 
			 System.out.println(".antes de la excepcion");
			 
			 //asi entra en el primer catch
			 //array_corto[10] = 10;
			 
			 //asi entra en el segundo catch
			 array_corto[1]=5/0;
			 System.out.println(".no hay una excepcion");
		 
		 }
		 
		 catch (ArrayIndexOutOfBoundsException e) {
		 
			 // se captura una excepci�n por intentar acceder a una posici�n
			 
			 // fuera de los l�mites del array.
			 
			 System.out.println(".hay una excepcion por acceso incorrecto");
		 
		 }
		 
		 catch (ArithmeticException e) {
		 
			 // se captura una excepci�n aritm�tica.
			 
			 System.out.println(".hay una excepcion por error aritmetico");
		 
		 }
		 
		 finally {
		 
			 // despu�s del try catch...
			 
			 System.out.println(".siempre se ejecuta [finally]");
			 
		 }
	 
	 }
}
