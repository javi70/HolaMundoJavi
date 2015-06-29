package com.ipartek.formacion.holaclase.controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControladorAjaxRegistroUsuario
 */
public class ControladorAjaxRegistroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorAjaxRegistroUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response); // si llamamos por get puenteamos a doPost
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//declarar array con nombres de usuarios
		ArrayList<String> listaUsuarios = new ArrayList<String>();
		listaUsuarios.add("ander");
		listaUsuarios.add("pepe");
		listaUsuarios.add("marimotxos");
		listaUsuarios.add("ambrosio");
		listaUsuarios.add("doraemon");
		listaUsuarios.add("callou");
		
		ArrayList<String> listaEmails = new ArrayList<String>();
		listaEmails.add("ander@ipartek.com");
		listaEmails.add("pepe@pepe.es");
		listaEmails.add("marimotxos@gmail.om");
		listaEmails.add("ambrosio@gmail.com");
		listaEmails.add("doraemon@hotmail.com");
		listaEmails.add("callou@pepe.es");
		
		//respuesta tipo Json
		response.setContentType("appplication/json");
		response.setCharacterEncoding("utf-8");
		
		//variable tipo PrintWriter para escribir response
		PrintWriter out = response.getWriter();

		//out.print("Hola soy una respuesta");
		
		String usuario=request.getParameter("usuario");
		String email=request.getParameter("email");
		
		if (null != usuario){
			//comprobar que no exista el usuario
			if (listaUsuarios.contains(usuario)){
				//out.print("Usuario Existe, por favor elige otro");
				//out.print("ERROR");
				out.print("{ \"existe_user\": true , \"user\": \""+usuario+"\" }");
			}else{
				//out.print("Usuario Disponible");
				//out.print("OK");
				out.print("{ \"existe_user\": false , \"user\": \""+usuario+"\" }");
			}		
			
		}else{
			//out.print("Usuario Disponible");
			//out.print("OK");
			out.print("{ \"existe_user\": false , \"user\": \""+usuario+"\" }");
		};	

		if (null != email){
			//comprobar que no exista el email
			if (listaEmails.contains(email)){
				out.print("{ \"existe_email\": true , \"email\": \""+email+"\" }");
			}else{
				out.print("{ \"existe_email\": false , \"email\": \""+email+"\" }");
			}		
			
		}else{
			out.print("{ \"existe_email\": false , \"email\": \""+email+"\" }");
		};
		
	}

}
