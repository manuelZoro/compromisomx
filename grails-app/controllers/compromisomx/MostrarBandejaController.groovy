package compromisomx

import java.awt.List;
import java.text.BreakIterator;
import java.text.DateFormat;
import java.text.SimpleDateFormat
import java.time.Clock.OffsetClock;

import javafx.scene.control.Pagination;

import javax.management.InstanceOfQueryExp;
import javax.persistence.metamodel.ListAttribute;

import org.apache.jasper.compiler.Node.ParamsAction;

class MostrarBandejaController {
	Cuenta usuario;
	Carpetas c;
	
	def index(int id) {
		def listaM;
		int totalRegistros = 0;
		String ordenar = "";
		String orden;
		boolean pagina;
		def n, max;

		if(session.cuenta == null){
			//println session.cuenta
			redirect(controller: "login", action: "index")
		return
		}
		usuario = (Cuenta)session.cuenta;
		//cuenta = Cuenta.get(session.cuenta)
		
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
		// select nombre_completo from cuenta where id = (Select  mentor_id from cuenta where nombre_completo = 'Harry Potter Perez') or mentor_id = (Select id from cuenta where nombre_completo = 'Harry Potter Perez');
		
		if(params.offset == null) {
			n = 0;
		} else {
			n = Integer.parseInt(params.offset);
		}

		def contactos = Cuenta.findAll("from Cuenta as c where c.id = "+usuario.mentor.id+" or c.mentor = "+usuario.id+")");
		if(params.max != null)
			max = params.max;
		
		if(id == 0 && params.max == null && params.offset == null) {
			c = Carpetas.findByNombre("Recibidos");
			listaM = Bandeja.findAll("from Bandeja as b where (b.destinatario like '%"+ usuario.nombreCompleto + "%' OR b.remitente = '" +usuario.nombreCompleto + "') and b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: 5, offset: 0] );
				totalRegistros = Bandeja.executeQuery("from Bandeja as b where (b.destinatario like '%"+ usuario.nombreCompleto + "%' OR b.remitente = '" +usuario.nombreCompleto + "') and b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
		} else if(id != 0 && params.max == null && params.offset == null) {
			c = Carpetas.findById(id);
			if(c.nombre.equals("Recibidos")) {
				listaM = Bandeja.findAll("from Bandeja as b where (b.destinatario like '%"+ usuario.nombreCompleto + "%' OR b.remitente = '" +usuario.nombreCompleto + "') and b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: 5, offset: 0] );
				totalRegistros = Bandeja.executeQuery("from Bandeja as (b where b.destinatario like '%"+ usuario.nombreCompleto + "%' OR b.remitente = '" +usuario.nombreCompleto + "') and b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
			} else {
				listaM = Bandeja.findAll("from Bandeja as b where b.remitente like '%"+ usuario.nombreCompleto +"%' and b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: 5, offset: 0] );
				totalRegistros = Bandeja.executeQuery("from Bandeja as b where b.remitente like '%"+ usuario.nombreCompleto + "%' OR b.remitente = '" +usuario.nombreCompleto +"' and b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
			}
		} else if(id != 0 && params.max != null && params.offset != null){
			c = Carpetas.findById(id);
			if(c.nombre.equals("Recibidos")) {
				listaM = Bandeja.executeQuery("from Bandeja as b where (b.destinatario like '%"+ usuario.nombreCompleto + "%' OR b.remitente = '" +usuario.nombreCompleto + "') and b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: max, offset: n] );
				totalRegistros = Bandeja.executeQuery("from Bandeja as b where (b.destinatario like '%"+ usuario.nombreCompleto + "%' OR b.remitente = '" +usuario.nombreCompleto + "') and b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
			} else {
				listaM = Bandeja.executeQuery("from Bandeja as b where b.remitente like '%"+ usuario.nombreCompleto +"%' and b.carpeta = ? order by " + ordenar + " " + orden, [c], [max: params.max, offset: params.offset] );
				totalRegistros = Bandeja.executeQuery("from Bandeja as b where b.remitente like '%"+ usuario.nombreCompleto +"%' and b.carpeta = ? order by " + ordenar + " " + orden, [c]).size();
			}
		}
		
		int numMensajes = totalRegistros;
		def nombreCarpetas = Carpetas.executeQuery("Select c.nombre from Carpetas as c where c.usuario = '*' or c.usuario ='" + usuario.nombreCompleto.toString() + "' order by c.id");
		int numPaginas =  Math.ceil(numMensajes/5.0).toInteger();
		
		//print Bandeja.executeQuery("SELECT COUNT(b.id) FROM Bandeja AS b WHERE b.nuevo = TRUE AND b.carpeta = 1 AND b.destinatario = '" +  usuario.nombreCompleto + "'");
		def detalle = CuentaDetalle.findById_cuenta(usuario.id);
		
		[lista: listaM, total: totalRegistros , carpetas: Carpetas.findAll("from Carpetas as c order by c.id"), carpeta: c, listaCarpetas: nombreCarpetas, num: n,
			noMensajes: numMensajes, paginas: numPaginas, cuenta: usuario, tipoOrdenacion: ordenar, modo: orden, ab: pagina, misContactos: contactos, detalleCuenta: detalle]
	}

	def mensajeNuevo() {
		/*Cuenta cuenta
		 if(session.cuenta == null){
		 //println session.cuenta
		 redirect(controller: "login", action: "index")
		 return
		 }
		 //println session.cuenta
		 cuenta = (Cuenta)session.cuenta
		 //cuenta = Cuenta.get(session.cuenta)
		 [cuenta:cuenta]*/
		[cuenta: usuario]
	}

	def enviarMensaje() {
		Calendar fecha = new GregorianCalendar();
		
		String meridiano = "a.m.";
		
		String aux1, aux2, aux3, aux4;
		
		int dia = fecha.get(Calendar.DAY_OF_MONTH);
		
		if(dia<10)
			aux1 = "0" + dia.toString();
		else
			aux1 = dia.toString();
			
		int mes = fecha.get(Calendar.MONTH) + 1;
		
		if(mes<10)
			aux2 = "0" + mes.toString();
		else
			aux2 = mes.toString();
			
		String confecha = aux1 + "/" + aux2 + "/" + fecha.get(Calendar.YEAR);
		
		int hora = fecha.get(Calendar.HOUR_OF_DAY);
		
		if(hora<10)
		{
			aux3 = "0" + hora.toString();
		} else {
			if(hora>=10) {
				aux3 = hora.toString();
				if(hora>12) {
					hora -= 12;
					meridiano = "p.m."
					if (hora<10) {
						aux3 = "0" + hora.toString();
					} else {
						aux3 = hora.toString();
					}
				}
			}
		}
		
		int minutos = fecha.get(Calendar.MINUTE);
		if (minutos < 10)
			aux4 = "0" + minutos.toString();
		else
			aux4 = minutos.toString();
			
		String conhora = aux3 + ":" + aux4 + " " + meridiano;
		String destinos = params.destinatario.toString().replace(",", " ");
		Bandeja mensaje = new Bandeja();
		mensaje.remitente = usuario.nombreCompleto;
		mensaje.destinatario = "";
		
		if(params.asunto.toString() == "" || params.asunto == null)
			mensaje .asunto = "";
		else
			mensaje.asunto = params.asunto;
		
		for(String destino: destinos.split(" ")) {
			if(!destino.equals("")) {			
				mensaje.destinatario += Cuenta.get(Integer.parseInt(destino)).nombreCompleto.toString() + ",";
			}
		}
		
		mensaje.cuerpo = params.cuerpoHTML;
		if(params.relevante[1].equals("true"))
			mensaje.relevante = true;
		else
			mensaje.relevante = false;

		mensaje.status = false;
		mensaje.fecha = confecha;
		mensaje.hora = conhora;
		mensaje.carpeta = Carpetas.findByNombre("Recibidos");
		mensaje.nuevo = true;
		mensaje.save(flush: true);
		//print mensaje.errors.toString();

		// Lo guardamos tambien en la carpeta de enviados
		Bandeja m =  new Bandeja();
		m.remitente = usuario.nombreCompleto;
		m.asunto = mensaje.asunto;
		m.destinatario = mensaje.destinatario;
		m.cuerpo = params.cuerpoHTML;
		m.relevante = mensaje.relevante;
		m.fecha = mensaje.fecha;
		m.hora = mensaje.hora;
		m.status = false;
		m.carpeta = Carpetas.findByNombre("Enviados");
		m.nuevo = false;
		m.save(flush: true);

		redirect(action: "index");
		return;
	}

	def moverPapelera(int id) {
		def mensaje = Bandeja.get(id);

		Carpetas mens = mensaje.carpeta;

		if(mens.nombre.equals("Papelera")) {
			flash.message = "book.delete.message"
			flash.args = mensaje.id.toString();
			flash.default = "Registro eliminado con exito!!"
			mensaje.delete(flush:true);
		}
		else {
			Carpetas mens2 = Carpetas.get(3);
			mensaje.carpeta = mens2;

			flash.message = "book.delete.message"
			flash.args = mensaje.id.toString();
			flash.default = "Registro enviado a Papelera"

			mensaje.save(flush:true);
		}
		redirect(action : "index");
		return;
	}

	def cambiarPrioridad() {
		def mensaje = Bandeja.get(params.id);
		if(mensaje.relevante)
			mensaje.relevante = false;
		else
			mensaje.relevante = true;
		mensaje.save(flush: true);
		
		def idCarpeta = params.idCarpeta;
		
		redirect(action: "index", params: [id: idCarpeta, offset: params.offset, tipo: params.tipo, orden: params.orden, max: 5]);
	}

	def marcarComo(int id) {
		def mensaje = Bandeja.get(id);
		if(mensaje.status){
			mensaje.status = false;
			mensaje.nuevo = true;
		}else{
			mensaje.status = true;
			mensaje.nuevo = false;
		}
		mensaje.save(flush: true);
		
		def idCarpeta = params.carpeta;
		
		redirect(action: "index", params: [id: idCarpeta, offset: params.offset, tipo: params.tipo, orden: params.orden, max: 5]);
	}
	
	def marcarComo_2(){
		print params.id;
		def mensaje = Bandeja.get(params.id);
		if(mensaje.status){
			mensaje.status = false;
			mensaje.nuevo = false;
		}else{
			mensaje.status = true;
			mensaje.nuevo = true;
		}
		mensaje.save(flush: true);
	}
	
	def filtroMensaje() {
		def result,n;
		def mostrar;
		String num = params.nums; 
		def c = Carpetas.findById(params.carpeta);
		def mentor = Cuenta.findByNombreCompleto(usuario.nombreCompleto).mentor.nombreCompleto.toString();
		
		
		int max = Integer.parseInt(params.max.toString());
		if(params.offset == null) {
			n = 0;
		} else {
			n = Integer.parseInt(params.offset.toString());
		}
		
		switch(num){
			case '1':
				mostrar = Bandeja.findAll("FROM Bandeja as b where b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "' AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja as b where b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "' AND b.carpeta = ?", [c]).size();
				break	
			case '2':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.status = TRUE AND (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.status = TRUE AND (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c]).size();
				break
			case '3':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.status = FALSE AND  (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.status = FALSE AND  (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c]).size();
				break
			case '4':
				mostrar = Bandeja.findAll("FROM Bandeja AS b WHERE b.relevante = TRUE AND  (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja AS b WHERE b.relevante = TRUE AND (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c]).size();
				break
			case '5':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.relevante = FALSE AND (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.relevante = FALSE AND (b.destinatario = '" +usuario.nombreCompleto + "' OR b.remitente = '" +usuario.nombreCompleto + "') AND b.carpeta = ?", [c]).size();
				break
			case '6':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.destinatario = '" +usuario.nombreCompleto + "' AND b.remitente = ? AND b.carpeta = ?", [mentor, c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.destinatario = '" +usuario.nombreCompleto + "' AND b.remitente = ? AND b.carpeta = ?", [mentor, c]).size();
				break
			case '7':
				mostrar = Bandeja.findAll("FROM Bandeja As b WHERE b.destinatario = '" +usuario.nombreCompleto + "' AND b.remitente <> ? AND b.carpeta = ?", [mentor, c], [max: max, offset: n])
				num = Bandeja.findAll("FROM Bandeja As b WHERE b.destinatario = '" +usuario.nombreCompleto + "' AND b.remitente <> ? AND b.carpeta = ?", [mentor, c]).size();
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

		int numPaginas =  Math.ceil(Integer.parseInt(num)/5.0).toInteger();
		
		[lista3: result, total3: num, carpeta: c, paginas: numPaginas, num: n, query: params.nums]
	}

	def busquedaMensaje() {
		def c = Carpetas.findById(1);
		def resultados;
		int numero;
		String aux1 = params.cad;
		int n, max;
		def consulta;
		
		if(params.offset == null) {
			n = 0;
		} else {
			n = Integer.parseInt(params.offset.toString());
		}
		
		max = Integer.parseInt(params.max.toString());
		
		if(aux1.equals("")) {
			redirect(action: "index");
		}
		else {
			try {
				consulta = Bandeja.executeQuery("FROM Bandeja as b WHERE (b.destinatario like '%" + aux1 +"%' OR b.remitente like '%" + aux1 +"%' OR b.asunto like '%" + aux1 + "%' OR b.cuerpo like '%" + aux1 + "%') AND b.carpeta != 3", [max: max, offset: n]);
			} catch (Exception e) {
				
			}
			
			if(consulta==[] || consulta == null) {
			}
			else {
				numero = Bandeja.executeQuery("FROM Bandeja as b WHERE (b.destinatario like '%" + aux1 +"%' OR b.remitente like '%" + aux1 +"%' OR b.asunto like '%" + aux1 + "%' OR b.cuerpo like '%" + aux1 + "%') AND b.carpeta != 3").size();
				resultados = consulta.toList();
			}
		}

		int numPaginas =  Math.ceil(numero/5.0).toInteger();
		
		[lista2: resultados, total2: numero, paginas: numPaginas, num: n, query: aux1]
	}

	def guardarCarpeta() {
		String nombre = params.nombreCarpeta.toString().toLowerCase().capitalize();
		def idCuenta = params.cuentaId;
		String nombreUsuario =  Cuenta.get(idCuenta).nombreCompleto;

		if(nombre != "") {
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
		def contactos = Cuenta.findAll("from Cuenta as c where c.id = (Select cta.mentor from Cuenta as cta where cta.nombreCompleto = '"+Cuenta.get(5).nombreCompleto+"') or c.mentor = (Select cnta.id from Cuenta as cnta where cnta.nombreCompleto = '"+Cuenta.get(5).nombreCompleto+"')");
		Bandeja mensajeActual = Bandeja.get(params.idMensaje);
		mensajeActual.status = true;
		mensajeActual.nuevo = false;
		mensajeActual.save(flush: true);
		
		String dia = mensajeActual.fecha.toString().substring(0,2);
		String anio = mensajeActual.fecha.toString().substring(8,10);
		String mes = mensajeActual.fecha.toString().substring(3,5);
		
		Date f = new Date(Integer.parseInt(anio) +100, Integer.parseInt(mes) - 1, Integer.parseInt(dia));

		SimpleDateFormat df = new SimpleDateFormat(" dd MMMM yyyy");
		def fecha = df.format(f);
		
		
		[mensaje: mensajeActual, carpetas: Carpetas.findAll("from Carpetas as c order by c.id"), cuenta: usuario, misContactos: contactos, fechaMensaje: fecha, offset: params.offset, tipo: params.tipo, orden: params.orden, max: 5]
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
	
	def contactos(){
		String nombre,usuario, mentor;
		
		if(params.mentor instanceof Cuenta)
			mentor = params.mentor.id;
		else
			mentor = params.mentor;
			
		print mentor;
		nombre = params.nombre;
		usuario = params.usuario;
		 
		[n: nombre, u: usuario, m: mentor, cuenta: Cuenta.get(5)]
	}
	
	def marcarMensajes() {
		Bandeja mensaje;
		String lista = params.lista.toString();
		
		for(String elemento: lista.split(",")) {
			if(!elemento.equals("")) {
				mensaje = Bandeja.get(elemento);
				mensaje.status = true;
				mensaje.nuevo = false;
				mensaje.save(flush: true);
			}
		}
		redirect(action: "index", params: [id: params.idCarpeta, offset: params.offset, tipo: params.tipo, orden: params.orden, max: 5])
	}
	
	def marcarMensajesComo() {
		Bandeja mensaje;
		String lista = params.lista.toString();
		
		for(String elemento: lista.split(",")) {
			if(!elemento.equals("")) {
				mensaje = Bandeja.get(elemento);
				
				if(params.val.toString().equals("l")) {
					mensaje.nuevo = false;
					mensaje.status = true;
				}
				
				if(params.val.toString().equals("nl")) {
					mensaje.status = false;
					mensaje.nuevo = true;
				}
				
				if(params.val.toString().equals("ni"))
					mensaje.relevante = false;
				
				if(params.val.toString().equals("i"))
					mensaje.relevante = true;
				
				mensaje.save(flush: true);
			}
		}
		redirect(action: "index", params: [id: params.idCarpeta, offset: params.offset, tipo: params.tipo, orden: params.orden, max: 5])
	}
	
	def eliminarMensajes() {
		Bandeja mensaje;
		String lista = params.lista.toString().replace(",", " ");
		
		for(String elemento: lista.split(" ")) {
			if(!elemento.equals("")) {
				mensaje = Bandeja.get(elemento);
				if(params.idCarpeta == Carpetas.findByNombre("Papelera").id.toString()) {
					mensaje.delete(flush: true);
				} else {
					def c = Carpetas.get(3);
					mensaje.carpeta = c;
					mensaje.save(flush: true);
				}
			}
			
		}
		
		redirect(action: "index", params: [id: params.idCarpeta, offset: params.offset, tipo: params.tipo, orden: params.orden, max: 5])
	}
	
	def moverMensajes() {
		Bandeja mensaje;
		String lista = params.lista.toString();
		String nombre = params.nombreCarpeta.toString();
		
		for(String elemento: lista.split(",")) {
			if(!elemento.equals("")) {
				mensaje = Bandeja.get(elemento);
				mensaje.carpeta = Carpetas.findByNombre(nombre);
				mensaje.save(flush: true);
			}
		}
		redirect(action: "index", params: [id: params.idCarpeta, offset: params.offset, tipo: params.tipo, orden: params.orden, max: 5])
	}
}
