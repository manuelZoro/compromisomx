package compromisomx

import java.rmi.Remote;
import java.awt.List;
import java.text.BreakIterator;
import java.text.DateFormat;
import java.text.SimpleDateFormat
import java.time.Clock.OffsetClock;

import javafx.scene.control.Pagination;

import javax.management.InstanceOfQueryExp;
import javax.persistence.metamodel.ListAttribute;

import org.apache.jasper.compiler.Node.ParamsAction;

class MostrarBandejaAdminController {

		Cuenta rem;
	
		def index(int id) {
		def listaM;
		def c;
		int totalRegistros = 0;
		String ordenar = "";
		String orden;
		boolean pagina;
		int n, max;
		
		if(session.cuenta == null){
			//println session.cuenta
			redirect(controller: "login", action: "index")
			return
		}
		rem = (Cuenta)session.cuenta;
	
		
		if(params.tipo.equals("1") || params.tipo.equals("b.fecha_hora")) {
			ordenar = "b.fecha"
		}else if(params.tipo.equals("2") || params.tipo.equals("b.remitente")) {
			ordenar = "b.remitente"
		}else if(params.tipo.equals("3") || params.tipo.equals("b.asunto")){
			ordenar = "b.asunto"
		}else {
			ordenar = "b.id"
		}
		
		if(params.orden == null) {
			orden = "desc";
		}else {
			orden = params.orden;
		}
		
		if(params.abierta == null) {
			pagina = false; 
		}else {
			pagina = params.abierta;
		}
		
		if(params.offset == null) {
			n = 0;
		} else {
			n = Integer.parseInt(params.offset);
		}
		
		if(params.max != null)
			max = Integer.parseInt(params.max);
		
		if(id == 0 && params.max == null && params.offset == null) {
			c = Carpetas.findByNombre("Recibidos");
			listaM = Bandeja.findAll("from Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: 5, offset: 0] );
			totalRegistros = Bandeja.findAll("from Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
		} else if(id != 0 && params.max == null && params.offset == null) {
			c = Carpetas.findById(id);
			listaM = Bandeja.findAll("from Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: 5, offset: 0] );
			totalRegistros = Bandeja.executeQuery("from Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
		}else if(id != 0 && params.max != null && params.offset != null){
			c = Carpetas.findById(id);
			listaM = Bandeja.executeQuery("from Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: max, offset: n] );
			totalRegistros = Bandeja.executeQuery("from Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
		}
		
		int numMensajes = Bandeja.findAll("from Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
		def nombreCarpetas = Carpetas.executeQuery("Select c.nombre from Carpetas as c where c.usuario = '*' or c.usuario ='" + rem.nombreCompleto.toString() + "' order by c.id");
		int numPaginas =  Math.ceil(numMensajes/5.0).toInteger();

		[lista: listaM, total: totalRegistros , carpetas: Carpetas.findAll("from Carpetas as c order by c.id"), carpeta: c, listaCarpetas: nombreCarpetas, num: n,
			noMensajes: numMensajes, paginas: numPaginas, cuenta: rem, tipoOrdenacion: ordenar, modo: orden, ab: pagina]
	}

	def marcarComo(int id) {
		def mensaje = Bandeja.get(id);
		if(mensaje.status)
			mensaje.status = false;
		else
			mensaje.status = true;
		mensaje.save(flush: true);
		
		def idCarpeta = params.carpeta;
		redirect(action: "index", params: [id: idCarpeta]);
	}

	def moverPapelera(int id) {
		def mensaje = Bandeja.get(id);

		Carpetas mens = mensaje.carpeta;

		if(mens.nombre.equals("Papelera")) {

			mensaje.delete(flush:true);
		}
		else {
			Carpetas mens2 = Carpetas.get(3);
			mensaje.carpeta = mens2;
			mensaje.save(flush:true);
		}
		redirect(action : "index");
		return;
	}

	def cambiarPrioridad(int id) {
		def mensaje = Bandeja.get(id);
		if(mensaje.relevante)
			mensaje.relevante = false;
		else
			mensaje.relevante = true;
		mensaje.save(flush: true);
		redirect(action: "index");
	}

	def marcarMensajes() {
		Bandeja mensaje;
		String lista = params.lista.toString();
		
		for(String elemento: lista.split(",")) {
			if(!elemento.equals("")) {
				mensaje = Bandeja.get(elemento);
				mensaje.status = true;
				mensaje.save(flush: true);
			}
		}
		redirect(action: "index");
	}
	
	def marcarMensajesComo() {
		Bandeja mensaje;
		String lista = params.lista.toString();
		
		for(String elemento: lista.split(",")) {
			if(!elemento.equals("")) {
				mensaje = Bandeja.get(elemento);
				
				if(params.val.toString().equals("l"))
					mensaje.status = true;
					
				if(params.val.toString().equals("nl"))
					mensaje.status = false;
					
				if(params.val.toString().equals("ni"))
					mensaje.relevante = false;
				
				if(params.val.toString().equals("i"))
					mensaje.relevante = true;
					
				mensaje.save(flush: true);
				print mensaje.errors.toString();
			}
		}
		redirect(action: "index", params: [id: params.idCarpeta])
	}
	
		def filtroMensaje() {
		
		def result;
		def n;
		def mostrar;
		String num = params.nums;
		def c = Carpetas.findById(params.carpeta);

		int max = Integer.parseInt(params.max.toString());
		if(params.offset == null) {
			n = 0;
		} else {
			n = Integer.parseInt(params.offset.toString());
		}
		
		switch(num){
			case '1':
				mostrar = Bandeja.findAll("FROM Bandeja as b where b.destinatario like '%" + rem.nombreCompleto + "%' AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja as b where b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c]).size();
				break	
			case '2':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.status = TRUE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.status = TRUE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c]).size();
				break
			case '3':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.status = FALSE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.status = FALSE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c]).size();
				break
			case '4':
				mostrar = Bandeja.findAll("FROM Bandeja AS b WHERE b.relevante = TRUE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja AS b WHERE b.relevante = TRUE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c]).size();
				break
			case '5':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.relevante = FALSE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.relevante = FALSE AND b.destinatario like '%" +rem.nombreCompleto + "%' AND b.carpeta = ?", [c]).size();
				break
			default:
				redirect(action: "index");
		}
		
		if(mostrar==[]) {
			num = 0;
		}
		else {
			result = mostrar.toList();
		}
		int numPaginas = Math.ceil(Integer.parseInt(num)/5.0).toInteger();
		
		[lista3: result, total3: num, carpeta: c, paginas: numPaginas, num: n, query: params.nums]
	}

	def busquedaMensaje() {

		def c = Carpetas.findById(1);
		def resultados;
		String numero;
		def n;
		String aux1 = params.cad;
		int numPaginas;
		def consulta;
		
		int max = Integer.parseInt(params.max.toString());
		
		if(params.offset == null) {
			n = 0;
		} else {
			n = Integer.parseInt(params.offset.toString());
		}
			consulta = Bandeja.findAll("FROM Bandeja as b WHERE ((b.remitente like '%" + aux1 + "%' OR b.asunto like '%" + aux1 + "%' OR b.cuerpo like '%" + aux1 + "%') AND b.carpeta <> 2) AND b.destinatario like '%" +rem.nombreCompleto + "%'", [max: max, offset: n]);
			numero = Bandeja.findAll("FROM Bandeja as b WHERE ((b.remitente like '%" + aux1 + "%' OR b.asunto like '%" + aux1 + "%' OR b.cuerpo like '%" + aux1 + "%') AND b.carpeta <> 2) AND b.destinatario like '%" +rem.nombreCompleto + "%'").size();
				if(consulta==[]) {
				}
				else {
					resultados = consulta.toList();
				}
		numPaginas =  Math.ceil(Integer.parseInt(numero)/5.0).toInteger();
		
		[lista2: resultados, total2: numero, carpeta: c, paginas: numPaginas, num: n, query: params.cad]
	}

	def guardarCarpeta() {
		String nombre = params.nombreCarpeta.toString().toLowerCase().capitalize();
		def idCuenta = params.cuentaId;
		String nombreUsuario =  Cuenta.get(idCuenta).nombreCompleto;

		if(nombre.length()>30) {
			
			flash.mensaje = "book.delete.message"
			flash.arg = nombre
			flash.mensajeD = "El nombre debe contener menos de 30 caracteres"
		}
		else {
			ArrayList<Carpetas> c = Carpetas.findAll("from Carpetas where nombre = '" + nombre + "' and usuario = '" + nombreUsuario +"'");
			
			if(c.size == 0) {
				Carpetas carpeta = new Carpetas();
				carpeta.nombre = nombre;
				carpeta.usuario = Cuenta.get(idCuenta).nombreCompleto;
				carpeta.save(flush: true);
			}else {
				flash.mensaje = "book.delete.message"
				flash.arg = nombre
				flash.mensajeD = "El nombre de la carpeta ya existe, indica otro nombre"
			}
		}
		redirect(action: "index");
	}

	def contenidoMensaje() {
		
		Bandeja mensajeActual = Bandeja.get(params.idMensaje);
		
		mensajeActual.status = true;
		mensajeActual.nuevo = false;
		
		mensajeActual.save(flush:true);
		
		String dia = mensajeActual.fecha.toString().substring(0,2);
		String anio = mensajeActual.fecha.toString().substring(8,10);
		String mes = mensajeActual.fecha.toString().substring(3,5);
		
		Date f = new Date(Integer.parseInt(anio) +100, Integer.parseInt(mes) - 1, Integer.parseInt(dia));

		SimpleDateFormat df = new SimpleDateFormat(" dd MMMM yyyy");
		def fecha = df.format(f);
		
		[mensaje: mensajeActual, carpetas: Carpetas.findAll("from Carpetas as c order by c.id"), cuenta: rem, fechaMensaje: fecha]
	}

	def eliminarCarpeta() {
		Carpetas carpetaEliminar = Carpetas.findByNombre(params.carpeta);
		ArrayList<Bandeja> listaMensajes = Bandeja.findAll("from Bandeja as b where b.carpeta = ? order by b.id desc", [carpetaEliminar]);
		for(Bandeja mensaje : listaMensajes) {
			mensaje.carpeta = Carpetas.findByNombre("Papelera");
			mensaje.save(flush: true);
		}
		carpetaEliminar.delete(flush: true);
		redirect(action: "index");
	}

	def cambiarNombreCarpeta() {
		Carpetas carpeta = Carpetas.findByNombre(params.carpetaNombre.toString());
		carpeta.nombre = params.nombreModificado.toString();
		carpeta.save(flush: true);
		redirect(action: 'index');
	}
	
	def eliminarMensajes() {
		Bandeja mensaje;
		String lista = params.lista.toString();
		
		for(String elemento: lista.split(",")) {
			mensaje = Bandeja.get(elemento);
			if(params.idCarpeta == Carpetas.findByNombre("Papelera").id.toString()) {
				mensaje.delete(flush: true);
			} else {
				mensaje.carpeta = Carpetas.findByNombre("Papelera");
				mensaje.save(flush: true);
			}
		}
		redirect(action: "index", params: [id: params.idCarpeta])
	}
	
	def moverMensajes() {
		Bandeja mensaje;
		String lista = params.lista.toString();
		String id = params.idCarpeta.toString();
		print lista.toString();
		print id.toString();
		
		for(String elemento: lista.split(",")) {
			mensaje = Bandeja.get(elemento);
			mensaje.carpeta = Carpetas.findById(id);
			mensaje.save(flush: true);
		}
		redirect(action: "index", params: [id: params.idCarpeta])
	}
}
