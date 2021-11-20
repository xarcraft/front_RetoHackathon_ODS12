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
			
								
			}		
				request.getRequestDispatcher("/Usuarios.jsp").forward(request, response);
			break;
		}
	}
	}

	
