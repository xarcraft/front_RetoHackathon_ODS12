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

public class RetoJSON {
	private static URL url;
	private static String sitio = "http://localhost:5000/";

	public static ArrayList<Retos> parsingRetos(String json) throws ParseException {

		JSONParser jsonParser = new JSONParser();
		ArrayList<Retos> lista = new ArrayList<Retos>();
		JSONArray retos = (JSONArray) jsonParser.parse(json);
		Iterator i = retos.iterator();
		while (i.hasNext()) {
			JSONObject innerObj = (JSONObject) i.next();
			Retos reto = new Retos();
			reto.setCodigo_reto((innerObj.get("codigo_reto").toString()));
			reto.setNombre_reto(innerObj.get("nombre_reto").toString());
			reto.setClave_reto(innerObj.get("clave_reto").toString());
			reto.setDescripcion_reto(innerObj.get("descripcion_reto").toString());
			reto.setPuntos_reto(Long.parseLong(innerObj.get("puntos_reto").toString()));
			reto.setNum_reto(Long.parseLong(innerObj.get("num_reto").toString()));
			lista.add(reto);

		}
		return lista;
	}

	public static ArrayList<Retos> getJSON() throws IOException, ParseException {

		url = new URL(sitio + "api/retos/listar");

		HttpURLConnection http = (HttpURLConnection) url.openConnection();

		http.setRequestMethod("GET");
		http.setRequestProperty("Accept", "application/json");

		InputStream respuesta = http.getInputStream();

		byte[] inp = respuesta.readAllBytes();
		String json = "";

		for (int i = 0; i < inp.length; i++) {
			json += (char) inp[i];
		}

		ArrayList<Retos> lista = new ArrayList<Retos>();
		lista = parsingRetos(json);
		http.disconnect();
		return lista;
	}

	public static int putJSON(Retos reto, String id) throws IOException {

		url = new URL(sitio + "api/retos/actualizar");

		HttpURLConnection http;

		http = (HttpURLConnection) url.openConnection();

		try {
			http.setRequestMethod("PUT");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}

		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");

		String data = "{" + "\"_id\":\"" + id + "\",\"codigo_reto\":\"" + reto.getCodigo_reto()
				+ "\",\"nombre_reto\":\"" + reto.getNombre_reto() + "\",\"clave_reto\":\"" + reto.getClave_reto()
				+ "\",\"descripcion_reto\":\"" + reto.getDescripcion_reto() + "\",\"cedula_usuario\":\""
				+ "\",\"puntos_reto\":\"" + reto.getPuntos_reto()
				+ "\",\"subtotalpuntos\":\"" + "\",\"total_puntos\":\""
				+ "\",\"num_reto\":\"" + reto.getNum_reto() + "\"}";

		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);

		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}

}
