package co.edu.unbosque.EcoLogical;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.unbosque.EcoLogical.UsuarioJSON;
import co.edu.unbosque.EcoLogical.Usuarios;


@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Controlador() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String menu=request.getParameter("menu");		
		String accion=request.getParameter("accion");
		
		switch (menu) {
		case "Usuarios":
			if (accion.equals("Listar")) {
				try {
					ArrayList<Usuarios> lista = UsuarioJSON.getJSON();
					request.setAttribute("listaUsuarios", lista);
				} catch (Exception e) {
					e.printStackTrace();
				}
			
								
			}else if(accion.equals("Registrar")) { 
			     Usuarios usuario = new Usuarios();
			     usuario.setNombre(request.getParameter("txtnombre"));
			     usuario.setEmail(request.getParameter("txtemail"));
			     usuario.setUsuario(request.getParameter("txtusuario"));
			     usuario.setPassword(request.getParameter("txtpassword"));
			     
			     int respuesta=0; 
			      try {
				   respuesta = UsuarioJSON.postJSON(usuario);
				   if (respuesta==200) { 
					   
					   
					   request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
					   System.out.println("Se registró correctamente, Bienvenid@: " +  usuario);
					   	
			        } else {
					System.out.println("Error: " +  respuesta);
				 }
			     } catch (Exception e) {
				 e.printStackTrace();
			      }
			}else if(accion.equals("Cargar")) {
				 
				String id= request.getParameter("id");
				try {
					
		           ArrayList<Usuarios> lista1 = UsuarioJSON.getJSON();
		           System.out.println("Parametro: " + id);
				   
				   for (Usuarios usuarios:lista1){
					if (usuarios.getNombre().equals(id)) {
					
						System.out.println("Parametro2: " + id);
						System.out.println("Parametro3: " + usuarios.getEmail());
						request.setAttribute("usuarioSeleccionado", usuarios);
					   
					   
						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);	
					}
				  }
				 } catch (Exception e) {
				 				e.printStackTrace();
				 	}

				
			}
			     
				
			
				request.getRequestDispatcher("/inicio.jsp").forward(request, response);
			break;
		}
	}
	
}
	
