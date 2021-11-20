package co.edu.unbosque.EcoLogical;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import co.edu.unbosque.EcoLogical.Usuarios;

public class UsuarioJSON {
	
	private static URL url;
	private static String sitio = "http://localhost:5000/";
	
	//*********Métodos que permite mostrar los registros de la tabla Usuarios**************
	public static ArrayList<Usuarios> parsingUsuarios(String json) throws ParseException {
		JSONParser jsonParser = new JSONParser();
		ArrayList<Usuarios> lista = new ArrayList<Usuarios>();
		JSONArray usuarios = (JSONArray) jsonParser.parse(json);
		Iterator i = usuarios.iterator();
		while (i.hasNext()) {
			JSONObject innerObj = (JSONObject) i.next();
			Usuarios usuario = new Usuarios();
			usuario.set_id(innerObj.get("_id").toString());
			usuario.setNombre(innerObj.get("nombre").toString());		
			usuario.setEmail(innerObj.get("email").toString());
			usuario.setUsuario(innerObj.get("usuario").toString());
			usuario.setPassword(innerObj.get("password").toString());			
			lista.add(usuario);
		}
		return lista;
	}
	//*****************************************************************************
	
	//*********Método que consume la API de listar*********************************
		public static ArrayList<Usuarios> getJSON() throws IOException, ParseException {
			
			url = new URL(sitio + "usuariosEco/listar");
			HttpURLConnection http = (HttpURLConnection)url.openConnection();
			
			http.setRequestMethod("GET");
			http.setRequestProperty("Accept", "application/json");
			InputStream respuesta = http.getInputStream();
			byte[] inp = respuesta.readAllBytes();
			String json = "";
			
			for (int i = 0; i < inp.length; i++) {
				json += (char) inp[i];
			}
			
			ArrayList<Usuarios> lista = new ArrayList<Usuarios>();
			lista = parsingUsuarios(json);
			http.disconnect();
			return lista;
		}
		//*****************************************************************************
		
		
		//*********Método que consume la API de guardar*********************************
		public static int postJSON(Usuarios usuario) throws IOException {
			
			url = new URL(sitio + "/usuariosEco/guardar");
			HttpURLConnection http;
			http = (HttpURLConnection)url.openConnection();
			
			try {
				http.setRequestMethod("POST");
			} catch (ProtocolException e) {
				e.printStackTrace();
			}
			
			http.setDoOutput(true);
			http.setRequestProperty("Accept", "application/json");
			http.setRequestProperty("Content-Type", "application/json");
			
			String data = "{" 					
					+ "\"nombre\": \"" + usuario.getNombre() 
					+ "\",\"email\": \""  + usuario.getEmail()
					+ "\",\"usuario\":\"" + usuario.getUsuario()
					+ "\",\"password\":\"" + usuario.getPassword()
					+ "\"}";
			
			byte[] out = data.getBytes(StandardCharsets.UTF_8);
			OutputStream stream = http.getOutputStream();
			stream.write(out);
			
			int respuesta = http.getResponseCode();
			http.disconnect();
			return respuesta;
		}
		//*****************************************************************************
		
		//*********Método que consume la API de Actualizar*********************************
		public static int putJSON(Usuarios usuario, String id) throws IOException {
			
			url = new URL(sitio + "usuariosEco/actualizar");
			HttpURLConnection http;
			http = (HttpURLConnection)url.openConnection();
			
			try {
				http.setRequestMethod("PUT");
			} catch (ProtocolException e) {
				e.printStackTrace();
			}
			http.setDoOutput(true);
			http.setRequestProperty("Accept", "application/json");
			http.setRequestProperty("Content-Type", "application/json");
			
			String data = "{" + "\"_id\":\"" + id
					+ "\",\"nombre\": \"" + usuario.getNombre() 
					+ "\",\"email\": \"" + usuario.getEmail() 
					+ "\",\"usuario\":\"" + usuario.getUsuario() 
					+ "\",\"password\":\"" + usuario.getPassword() 
					+ "\"}";
			
			byte[] out = data.getBytes(StandardCharsets.UTF_8);
			OutputStream stream = http.getOutputStream();
			stream.write(out);
			int respuesta = http.getResponseCode();
			http.disconnect();
			return respuesta;
		}
		//*******************************************************************************
		
		//*********Método que consume la API de Eliminar*********************************
		public static int deleteJSON(String id) throws IOException {
			
			url = new URL(sitio + "usuariosEco/eliminar/" + id);
			HttpURLConnection http;
			http = (HttpURLConnection)url.openConnection();
			
			try {
				http.setRequestMethod("DELETE");
			} catch (ProtocolException e) {
				e.printStackTrace();
			}
			http.setDoOutput(true);
			http.setRequestProperty("Accept", "application/json");
			http.setRequestProperty("Content-Type", "application/json");
			
			int respuesta = http.getResponseCode();
			http.disconnect();
			return respuesta;
		}
		//*******************************************************************************
		
		
}
