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

	Usuarios usuarios = new Usuarios();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String menu = request.getParameter("menu");
		String accion = request.getParameter("accion");

		switch (menu) {
		case "Usuarios":

			if (accion.equals("Registrar")) {
				Usuarios usuario = new Usuarios();
				usuario.setCedula(request.getParameter("txtcedula"));
				usuario.setNombre(request.getParameter("txtnombre"));
				usuario.setEmail(request.getParameter("txtemail"));
				usuario.setUsuario(request.getParameter("txtusuario"));
				usuario.setPassword(request.getParameter("txtpassword"));
				usuario.setBiografia(request.getParameter("txtbio"));
				usuario.setPuntos(Long.parseLong(request.getParameter("txtpuntos")));
				System.out.println(usuario.getNombre());
				System.out.println(usuario.getEmail());
				System.out.println(usuario.getUsuario());
				System.out.println(usuario.getPassword());
				System.out.println(usuario.getBiografia());
				System.out.println(usuario.getPuntos());

				int respuesta = 0;
				try {
					respuesta = UsuarioJSON.postJSON(usuario);
					request.setAttribute("usuarioSeleccionado", usuario);
					PrintWriter write = response.getWriter();// agrego linea
					if (respuesta == 200) {

						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=default").forward(request,
								response);
						System.out.println("Se registr� correctamente, Bienvenid@: " + usuario);

					} else {
						System.out.println("Error: " + respuesta);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			} else if (accion.equals("Actualizar")) {

				Usuarios usuario = new Usuarios();
				usuario.set_id(request.getParameter("txtid"));
				usuario.setCedula(request.getParameter("txtCedula"));
				usuario.setNombre(request.getParameter("txtnombre"));
				usuario.setEmail(request.getParameter("txtemail"));
				usuario.setUsuario(request.getParameter("txtusuario"));
				usuario.setPassword(request.getParameter("txtpassword"));
				usuario.setBiografia(request.getParameter("txtbio"));
				usuario.setPuntos(Long.parseLong(request.getParameter("txtpuntos")));

				int respuesta = 0;

				try {
					respuesta = UsuarioJSON.putJSON(usuario, usuario.get_id());
					request.setAttribute("usuarioSeleccionado", usuario);
					PrintWriter write = response.getWriter();

					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=default").forward(request,
								response);
						System.out.println("Se actualizo correctamente," + usuario);
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("Error: " + respuesta);
				}

			} else if (accion.equals("Cargar")) {

				String id = request.getParameter("id");
				try {

					ArrayList<Usuarios> lista1 = UsuarioJSON.getJSON();
					System.out.println("Parametro: " + id);

					for (Usuarios usuarios : lista1) {
						if (usuarios.getNombre().equals(id)) {

							System.out.println("Parametro2: " + id);
							System.out.println("Parametro3: " + usuarios.getCedula());
							request.setAttribute("usuarioSeleccionado", usuarios);
							request.getRequestDispatcher("Controlador?menu=Usuarios&accion=default").forward(request,
									response);

						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

			} else if (accion.equals("Eliminar")) {

				String id = request.getParameter("id");
				int respuesta = 0;

				try {
					respuesta = UsuarioJSON.deleteJSON(id);
					PrintWriter write = response.getWriter();
					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=default").forward(request,
								response);
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			request.getRequestDispatcher("/perfil.jsp").forward(request, response);
			break;

		}
	}

}
