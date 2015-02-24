package compromisomx

import grails.converters.JSON
import groovyx.gpars.extra166y.Ops.LongToDouble;

import java.net.URI.Parser;
import java.text.DateFormat;
import java.text.SimpleDateFormat;



import java.util.function.LongToDoubleFunction;

//import org.bouncycastle.asn1.microsoft.MicrosoftObjectIdentifiers;
import org.codehaus.groovy.grails.web.binding.bindingsource.JsonDataBindingSourceCreator.JsonArrayList;
import org.grails.datastore.mapping.model.types.conversion.StringToTimeZoneConverter;
import org.mozilla.javascript.regexp.SubString;

class AgendaController {
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd H:m:s")
    
	def index() {
		def citas  = Agenda.list();
		
		System.out.println("======  fecha: "+ citas.inicio);
		
		[ "citas": citas ];
		
		
	}
	
	//get
	def cuarta(int id){
		
		System.out.println("======  id: "+ id);
		Agendaconf dts_configuracion;
				
		if(id == 0){
			System.out.println("====== nueva conf "+ id);
			dts_configuracion = new Agendaconf();
		}
		else{
			System.out.println("====== editar conf "+ id);
			dts_configuracion = Agendaconf.get(id);
		}
		[ dts_configuracion:dts_configuracion ];
		
	}
	
	//post
	def conf_guardar(){
		def conf = new Agendaconf(params);		
		
		
		System.out.println("=========== PARAMETROS.......   hora inicio trabajo : "+ conf.horait);
		System.out.println("=========== PARAMETROS.......   hora fin trabajo : "+ conf.horaft);
		System.out.println("=========== PARAMETROS.......   id parametro: "+ params.id);
		System.out.println("=========== PARAMETROS.......   id objeto: "+ conf.id);
		System.out.println("=========== PARAMETROS.......   hora inicio disponible: "+ conf.horaid);
		System.out.println("=========== PARAMETROS.......   hora fin disponible: "+ conf.horafd);
		System.out.println("=========== PARAMETROS.......   profesion: "+ conf.profesion);
		System.out.println("=========== PARAMETROS.......   ocupacion: "+ conf.ocupacion);
		System.out.println("=========== PARAMETROS.......   pasatiempo: "+ conf.pasatiempo);
		System.out.println("=========== PARAMETROS.......   deporte: "+ conf.deporte);
		System.out.println("=========== PARAMETROS.......   otras: "+ conf.otras);
		if(params.id != "0")
		{
			System.out.println("======== EDITANDO");
			Agendaconf conf_editar = Agendaconf.get(params.id);
			conf_editar.horait = conf.horait;
			conf_editar.horaft = conf.horaft;
			conf_editar.horaid = conf.horaid;
			conf_editar.horafd = conf.horafd;
			conf_editar.profesion = conf.profesion;
			conf_editar.ocupacion = conf.ocupacion;
			conf_editar.pasatiempo = conf.pasatiempo;
			conf_editar.deporte = conf.deporte;
			conf_editar.otras = conf.otras;
			conf_editar.save(flush: true);
			
		}
		else
		{
			System.out.println("========== NUEVO....... ");
			conf.save(flush: true);
		}
		
		redirect(action: "index")
		return
	}

	def getAll()
	{		
		def events = Agenda.list();
		int flag = 1;		
		String cadenaJson = "{";
		cadenaJson = cadenaJson + "\"success\":"+ 1+",";
		cadenaJson = cadenaJson + "\"result\":"+"[";
		for(evento in events){ //citas
			
			
			cadenaJson = cadenaJson + "{";
			
			cadenaJson = cadenaJson + "\"id\":"+ "\""+evento.id.toString()+"\",";
			cadenaJson = cadenaJson + "\"title\":"+"\""+evento.nombre+"\",";
			//cadenaJson = cadenaJson + "\"url\": \"javascript:detalles(\"" + evento.id.toString() + "\""+");\",";
			//event-warning para citas
			//event-info para sugeridas
			//event-success para eventos
			cadenaJson = cadenaJson + "\"url\": \"http://www.example.com/\",";
			cadenaJson = cadenaJson + "\"class\": \"event-success\",";
			cadenaJson = cadenaJson + "\"start\":"+"\""+ this._formatDate(evento.inicio)+"\",";
			cadenaJson = cadenaJson + "\"end\":"+"\""+ this._formatDate(evento.fin)+"\"";		
			cadenaJson = cadenaJson +	"}";
			if(events.size() > flag){
			 cadenaJson = cadenaJson +	",";			 
			}
			
			 flag= flag+1;
		}
		cadenaJson = cadenaJson + "]}";
		response.setContentType("application/json");
		render cadenaJson;
		System.out.println("======  Json: "+ cadenaJson);
		return cadenaJson;
	}
	
	def  _formatDate(date) 
	{		
		String[] parts = date.toString().trim().split(" ");		
		String[] dts_fecha = parts[0].split("-");
		String[] dts_hora = parts[1].split(":");				
		date= dts_fecha[0]+"/"+dts_fecha[1]+"/"+dts_fecha[2]+" "+dts_hora[0]+":"+dts_hora[1]+":00";		
		Date fecha = new Date(date);		
		String fechas =  Long.toString(fecha.getTime());		
		return fechas;
	}
	
	def render()
	{
		
	}
	
	def ncita(int id){
		System.out.println("======  id: "+ id);
		Agenda cita;
		
		if(id == 0){
			System.out.println("====== nueva cita "+ id);
			cita = new Agenda();
		}
		else{
			System.out.println("====== editar cita "+ id);
			cita = Agenda.get(id);
		}
		[ cita:cita];
	}
	
	
	def mcita(int id){
		System.out.println("id: "+ id);
		Agenda cita;
				
		if(id == "" || id == null)
			cita = new Agenda();
		else
			cita = Agenda.get(id);
				 
		[ cita:cita ];
	}	

	
	def detalle(int id){
		System.out.println("id: "+ id);
		Agenda cita;
				
		if(id == "" || id == null)
			cita = new Agenda();
		else
			cita = Agenda.get(id);
				 
		[ cita:cita ];
	}	
	
	
	def cita_guardar(){
		def cita = new Agenda(params);
		def fecha = params.anio + "-" + params.mes + "-" + params.dia + " " +params.horai+ ":00";	
		cita.inicio = df.parse(fecha);
		def fecha1 = params.anio1 + "-" + params.mes1 + "-" + params.dia1 + " " +params.horaf+ ":00";
		cita.fin =  df.parse(fecha1);
		 

		System.out.println("=========== PARAMETROS.......   fecha inicio : "+ cita.inicio);
		System.out.println("=========== PARAMETROS.......   fecha fin : "+ cita.fin);
		System.out.println("=========== PARAMETROS.......   id parametro: "+ params.id);
		System.out.println("=========== PARAMETROS.......   id objeto: "+ cita.id);
		System.out.println("=========== PARAMETROS.......   nombre: "+ cita.nombre);
		System.out.println("=========== PARAMETROS.......   lugar: "+ cita.lugar);
		System.out.println("=========== PARAMETROS.......   estado: "+ cita.estado);
		System.out.println("=========== PARAMETROS.......   municipio: "+ cita.municipio);
		System.out.println("=========== PARAMETROS.......   horai: "+ cita.horai);
		System.out.println("=========== PARAMETROS.......   horaf: "+ cita.horaf);
		System.out.println("=========== PARAMETROS.......   inicio: "+ cita.inicio);
		System.out.println("=========== PARAMETROS.......   fin: "+ cita.fin);
		System.out.println("=========== PARAMETROS.......   comentario: "+ cita.comentario);
		System.out.println("=========== PARAMETROS.......   rep: "+ cita.rep);
		System.out.println("=========== PARAMETROS.......   mensaje: "+ cita.mensaje);
		System.out.println("=========== PARAMETROS.......   tiempo: "+ cita.tiempo);
		
		if(params.id != "0")
		{
			System.out.println("======== EDITANDO");
			Agenda cita_editar = Agenda.get(params.id);
			cita_editar.nombre = cita.nombre;
			cita_editar.lugar = cita.lugar;
			cita_editar.estado = cita.estado;
			cita_editar.municipio = cita.municipio;
			cita_editar.horai = cita.horai;
			cita_editar.horaf = cita.horaf;
			cita_editar.inicio = cita.inicio;
			cita_editar.dia = cita.dia;
			cita_editar.mes = cita.mes;
			cita_editar.anio = cita.anio;
			cita_editar.repetir = cita.fin;
			cita_editar.dia = cita.dia1;
			cita_editar.mes = cita.mes1;
			cita_editar.anio = cita.anio1;
			cita_editar.repetir = cita.repetir;
			cita_editar.comentario = cita.comentario;
			cita_editar.rep = cita.rep;
			cita_editar.mensaje = cita.mensaje;
			cita_editar.tiempo = cita.tiempo;
			cita_editar.save(flush: true);
			
		}
		else
		{
			System.out.println("========== NUEVO....... ");
			cita.save(flush: true);
		}
		
		redirect(action: "index")
		return
	}
	
	def eliminar(){
		System.out.println("========  ELIMINAR id: "+ params.id_eliminar);
		String id = params.id_eliminar;
	
		Agenda cita;
		cita = Agenda.get(id);
		if(cita != null){
			cita.delete(flush: true)
		}
		else{
			System.out.println("===== NO EXISTE ELIMINAR =====");
						
		}
		redirect(action: "index")
		return
	}
}
