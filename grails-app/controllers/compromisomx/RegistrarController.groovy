package compromisomx

import compromisomx.Pais;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

class RegistrarController {

	DateFormat df = new SimpleDateFormat("yyyy-MM-dd")

	def index= {
		// render the view with the controller as the model
		render(view: "paso0")

		//		def btnid = params.botonvalor
		//		if(btnid == 1){
		//			redirect(controller: "registrar", action: "index")
		//		}
		//		if(btnid == 2){
		//			redirect(controller: "registrar", action: "paso3")
		//		}
		//		else
		//		{
		//			redirect(controller: "registrar", action: "index")
		//		}
		//		def btnid = params.botonvalor
		//		if(btnid == 1){
		//			redirect(controller: "registrar", action: "index")
		//		}
		//		if(btnid == 2){
		//			redirect(controller: "registrar", action: "paso3")
		//		}
		//		else
		//		{
		//			redirect(controller: "registrar", action: "index")
		//		}
	}

	def paso0(){
		println("Params Paso 0: " + params)
	}

	def paso5_des(){}

	def savePaso0(){
		println("Params SavePaso 0: " + params)
		if(params.tipo != null ){
			Cuenta cuenta;
			if(session.registro_cuenta == null) {
				session.registro_cuenta = new Cuenta();
			}
			cuenta = (Cuenta)session.registro_cuenta;
			cuenta.tipo = (params.tipo.equals("1"))?true:false
			//render cuenta.tipo
			println("Params Paso 0: " + params)
			if(params.accion.equals("1")){
				redirect(controller: "registrar", action: "paso1")
				return
			}
			else{
				redirect(controller: "registrar", action: "paso0")
				return
			}
		}else {
			redirect (controller: "registrar", action: "paso0")
			return
		}
	}

	def paso1() {
		println("Params Paso 1: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}
		def query = {
			if (params.nombre) {
				ilike('nombres', '%' + params.nombre + '%')
				//println("N:" + params.name)
			}
			if (params.primer_apellido) {
				ilike('primer_apellido', '%' + params.apellidos + '%')
				//println("N:" + params.name)
			}
			/*
			 if (params.segundo_apellidosss) {
			 ilike('segundo_apellido', '%' + params.apellidos + '%')
			 //println("N:" + params.name)
			 }*/
			if (params.sort){
				order(params.sort,params.order)
				//println("O:" + params.order)
			}
			//println(params.name)
		}

		def criteria = Cuenta.createCriteria()
		params.max = Math.min(params.max ? params.int('max') : 5, 10)
		def users = criteria.list(query, max: params.max, offset: params.offset)
		def filters = [nombres: params.name, apellidos: params.apellidos]

		def model = [cuentaList: users, cuentaTotal: users.totalCount/*, filters: filters*/]

		if (request.xhr) {
			println("Todo otra vez")
			render(template: "grid", model: model)
		}
		else {
			println("Filtrado")
			model
		}
	}

	def savePaso1(){

		println("Params SavePaso 1: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}

		if(params.idMentor.length() > 0 ){
			cuenta = (Cuenta)session.registro_cuenta;

			cuenta.mentor = Cuenta.get(params.idMentor)
		}
		else {
			redirect(controller: "registrar", action: "paso1")
			return
		}

		if( params.accion.equals("1") ){
			redirect(controller: "registrar", action: "paso2")
			return
		}
		else if( params.accion.equals("0") ){
			redirect(controller: "registrar", action: "paso0")
			return
		}
	}

	def paso2() {
		println("Params Paso 2: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			//redirect(controller: "registrar", action: "paso0")
		}
		cuenta = (Cuenta)session.registro_cuenta;
		//render "El mentor es " + cuenta.mentor.nombreCompleto

		def lista = Pais.list()
		def lista2 = Estado.list()
		def lista3 = Ciudad.list()
		def lista4 = CodigoPostal.list()
		def lista5 = Colonia.list()
		[todospaises:lista,todosestados:lista2,todosciudades:lista3,todoscodigospostales:lista4,todoscolonias:lista5]
	}

	def savePaso2(){

		println("Params SavePaso 2: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}
		cuenta = session.registro_cuenta;

		//Pantalla 1
		cuenta.curp = params.curp
		cuenta.nombres = params.nombre
		cuenta.primer_apellido = params.primer_apellido
		cuenta.segundo_apellido = params.segundo_apellido
		//session.fecha = params.fechanacimiento
		//String testDateString = ""+
		//Date d1 =
		cuenta.fecha_de_nacimiento = df.parse(params.fechanacimiento) //ALERTA
		cuenta.idioma = params.idioma
		if(params.genero.equals("1")) {cuenta.genero=true}
		else if(params.genero.equals("0")){cuenta.genero=false}
		//cuenta.genero = Boolean.parseBoolean(params.genero)
		String aka = params.nombre + " " + params.primer_apellido + " " + params.segundo_apellido
		cuenta.nombreCompleto = aka

		//Pantalla 2
		cuenta.pais = Pais.get(Long.parseLong(params.pais))
		cuenta.estado = Estado.get(params.estado)
		cuenta.ciudad = Ciudad.get(params.ciudad)
		//cuenta.codigo_postal = params.codigopostal
		//cuenta.colonia = params.colonia
		cuenta.codigo_postal = CodigoPostal.get(params.codigopostal) //
		cuenta.colonia = Colonia.get(params.colonia) //
		cuenta.calle = params.calle
		cuenta.numero_exterior = params.mumeroexterior
		cuenta.numero_interior = params.numerointerior
		cuenta.manzana = params.manzana
		cuenta.cruzamientos = params.cruzamientos
		cuenta.referencias = params.referencias

		//Pantalla 3
		cuenta.telefono_casa = params.telefonocasa
		cuenta.otro_telefono = params.telefono
		cuenta.telefono_movil = params.telefonomovil
		cuenta.codigo_verificacion1 = params.codigoverificaciontelefono
		cuenta.correo_electronico = params.correroelectronico
		cuenta.codigo_verificacion2 = params.codigoverificacioncorreo

		//Pantalla 4
		cuenta.password = params.contrasena
		cuenta.nombre_usuario = params.nombreusuario

		//Pantalla 5
		cuenta.coaplicantenombre = params.conombre
		cuenta.coaplicanteprimerapellido = params.coprimerapellido
		cuenta.coaplicantesegundoapellido = params.cosegundoapellido


		if(params.confirmarcontrasena != params.contrasena) {
			redirect(controller: "registrar", action: "paso2")
			return
		}

		if( params.accion.equals("1") ){
			redirect(controller: "registrar", action: "paso3")
			return
		}
		else if( params.accion.equals("0") ){
			redirect(controller: "registrar", action: "paso1")
			return
		}

	}

	def paso3() {
		println("Params Paso 3: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}
		cuenta = (Cuenta)session.registro_cuenta;

		String iniciales
		try{
			//No se está considerando el caso de que un a persona no tenga segundo apellido, aún
			//println "Nombres: " + cuenta.nombres + cuenta.primer_apellido + cuenta.segundo_apellido "::"
			if(cuenta.segundo_apellido.size()>0){
				//println "Aquí"
				iniciales = cuenta.nombres.substring(0, 1) + cuenta.primer_apellido.substring(0, 1) + cuenta.segundo_apellido.substring(0, 1);
			}else{
				//println "o acá"
				iniciales = cuenta.nombres.substring(0, 1) + cuenta.primer_apellido.substring(0, 1);
			}
		}
		catch(Exception e){
			//println "Saldré"
			redirect(controller: "registrar", action: "paso2")
			//Mostrar error en el nombre
			return
		}
		//println "Nooooo"
		[iniciales:iniciales]
		//render iniciales
	}

	def savePaso3(){

		println("Params SavePaso 3: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}
		cuenta = (Cuenta)session.registro_cuenta;

		String iniciales
		try{
			//No se está considerando el caso de que un a persona no tenga segundo apellido, aún
			//println "Nombres: " + cuenta.nombres + cuenta.primer_apellido + cuenta.segundo_apellido "::"
			if(cuenta.segundo_apellido.size()>0){
				//println "Aquí"
				iniciales = cuenta.nombres.substring(0, 1) + cuenta.primer_apellido.substring(0, 1) + cuenta.segundo_apellido.substring(0, 1);
			}else{
				//println "o acá"
				iniciales = cuenta.nombres.substring(0, 1) + cuenta.primer_apellido.substring(0, 1);
			}
		}
		catch(Exception e){
			//println "Saldré"
			redirect(controller: "registrar", action: "paso3")
			//Mostrar error en el nombre
			return
		}

		if((params.checkacepto != null)&&(params.firmadigital.equals(iniciales))){
			session.checkacepto = true
			session.firmadigital = params.firmadigital

			//		render "Datos:<br>${session.p3checkacepto}<br>${session.p3firmadigital}<br>"
			session.aviso = true
			//redirect(controller: "registrar", action: "paso4")
			cuenta.aceptaAcuerdo = true;
			cuenta.firmaDigital = params.firmadigital
			//return
		}
		else{
			session.aviso = false
			redirect(controller: "registrar", action: "paso3")
			return
		}

		if( params.accion.equals("1") ){
			redirect(controller: "registrar", action: "paso4")
			return
		}
		else if( params.accion.equals("0") ){
			redirect(controller: "registrar", action: "paso2")
			return
		}
	}

	def paso4() {
		println("Params Paso 4: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			//redirect(controller: "registrar", action: "paso0")
		}
		cuenta = (Cuenta)session.registro_cuenta;
	}

	def savePaso4(){

		println("Params SavePaso 4: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}

		cuenta = (Cuenta)session.registro_cuenta;

		if(params.paquete != null){
			if(params.paquete.size() > 0){
				cuenta.paquete = Integer.parseInt(params.paquete)
			}
		}
		else{
			redirect(controller: "registrar", action: "paso4")
			return
		}


		if( params.accion.equals("1") ){
			redirect(controller: "registrar", action: "paso5")
			return
		}
		else if( params.accion.equals("0") ){
			redirect(controller: "registrar", action: "paso3")
			return
		}
	}

	def paso5() {
		println("Params Paso 5: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			//redirect(controller: "registrar", action: "paso0")
			session.registro_cuenta_aut = new Autopago()
		}
		cuenta = (Cuenta)session.registro_cuenta;


		def lista = Pais.list()
		def lista2 = Estado.list()
		def lista3 = Ciudad.list()
		def lista4 = CodigoPostal.list()
		def lista5 = Colonia.list()
		[todospaises:lista,todosestados:lista2,todosciudades:lista3,todoscodigospostales:lista4,todoscolonias:lista5]
	}

	def savePaso5(){

		println("Params SavePaso 5: " + params)
		Autopago cuenta_aut;
		if(session.registro_cuenta_aut == null) {
			//redirect(controller: "registrar", action: "paso0")
			//return
			session.registro_cuenta_aut = new Autopago()
		}

		cuenta_aut = (Autopago)session.registro_cuenta_aut;

		cuenta_aut.autopagonombres = params.nombre_aut
		cuenta_aut.autopagoprimerapellido = params.priemrapellidoaut
		cuenta_aut.autopagosegundoapellido = params.segunoapellidoaut
		cuenta_aut.autopagopais = Pais.get(Long.parseLong(params.paisaut))
		cuenta_aut.autopagoestado = Estado.get(params.estadoaut)
		cuenta_aut.autopagociudad = Ciudad.get(params.cuidadaut)
		cuenta_aut.autopagocodigopostal = CodigoPostal.get(params.cpaut)
		cuenta_aut.autopagocolonia = Colonia.get(params.coloniaaut)
		cuenta_aut.autopagocalle = params.calleaut
		cuenta_aut.autopagonumeroexterior = params.numextaut
		cuenta_aut.autopagonumerointerior = params.numintaut
		cuenta_aut.autopagomanzana = params.manzanaaut
		cuenta_aut.autopagocruzamientos = params.cruzamientosaut
		cuenta_aut.autopagoreferencia = params.referenciasaut
		cuenta_aut.autopagocorreo = params.correoaut

		cuenta_aut.autoformadeenvio = params.grupo1

		cuenta_aut.autotipotarjetaformapago = params.formapago
		cuenta_aut.autopagotipotarjeta = params.fpago
		cuenta_aut.autopagotitulartarjeta = params.titulartarjeta
		cuenta_aut.autopagonumerotarjeta = params.numerotarjeta
		cuenta_aut.autopagoexpiracionmes = params.expmm
		cuenta_aut.autopagoexpiracionano = params.expaa
		cuenta_aut.autopagocodigoseguridad = params.codigoseguridad
		cuenta_aut.autopagodireccion1 = params.direccion1
		cuenta_aut.autopagodireccion2 = params.direccion2
		cuenta_aut.autopagopaist = Pais.get(params.pais_aut)
		cuenta_aut.autopagoestadot = Estado.get(params.estado)
		cuenta_aut.autopagociudadt = Ciudad.get(params.ciudad)
		cuenta_aut.autopagocodigopostalt = CodigoPostal.get(params.cp)
		cuenta_aut.autopagotelefonot = params.telefono
		//println("CP:" + cuenta_aut.autopagocodigopostal.codigo + " : "  +cuenta_aut.autopagocodigopostalt.codigo)
		if(params.accion.equals("1") ){
			redirect(controller: "registrar", action: "paso6")
			return
		}
		else if( params.accion.equals("0") ){
			redirect(controller: "registrar", action: "paso4")
			return
		}
	}

	def paso6() {
		println("Params Paso 6: " + params)

		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			//redirect(controller: "registrar", action: "paso0")
		}
		cuenta = (Cuenta)session.registro_cuenta;


		def lista = RegistroPasatiempos.list()
		def lista2 = RegistroProfesion.list()
		def lista3 = RegistroOtrasActividades.list()
		def lista4 = RegistroOcupacion.list()
		def arre = ["Casado", "Soltero"]
		[todospasatiempos:lista,todosprofesiones:lista2,todosotrasactiviades:lista3,todosocupaciones:lista4,arre:arre]
	}

	def savePaso6()
	{
		/*
		 def fechas = params.fechanachijo
		 def generos =  params.generohijo
		 if(fechas instanceof String){
		 render "String: " + fechas
		 }else if(fechas.size()>1){
		 render "List:" + fechas
		 }else {
		 }
		 */

		//render "Fecvhas: " + fechas + "   :   " + generos

		println("Params SavePaso 6: " + params)

		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}
		InformacionPersonal cuenta_inf;
		if(session.registro_cuenta_inf == null){
			session.registro_cuenta_inf = new InformacionPersonal()
		}
		//cuenta = session.registro_cuenta;
		cuenta_inf = (InformacionPersonal)session.registro_cuenta_inf;
		//cuenta_inf.aniversario = df.parse(params.fechaniversario)
		//cuenta_inf.fechanacimiento =  df.parse(params.fechanacimiento)
		//cuenta_inf.fechanacimiento = d1

		cuenta_inf.pasatiempo = RegistroPasatiempos.get(Long.parseLong(params.pasatiempo))
		cuenta_inf.profesion = RegistroProfesion.get(Long.parseLong(params.profesion))
		cuenta_inf.otrasactividades = RegistroOtrasActividades.get(Long.parseLong(params.actividades))
		cuenta_inf.ocupacion = RegistroOcupacion.get(Long.parseLong(params.ocupacion))

		cuenta_inf.tallaPlayera = params.talla_playera;
		cuenta_inf.tallaCamisa = params.talla_camisa;
		cuenta_inf.tallaZapato = params.talla_zapato;

		cuenta_inf.twitter = params.l_twi
		cuenta_inf.facetime = params.l_fat
		cuenta_inf.facebook = params.l_fac
		cuenta_inf.whatsapp = params.l_wha
		cuenta_inf.skype = params.l_sky

		cuenta_inf.trabajo_inicio = params.htrabajo1
		cuenta_inf.trabajo_fin = params.htrabajo2
		cuenta_inf.libre_inicio = params.htlibre1
		cuenta_inf.libre_fin = params.htlibre2

		cuenta_inf.estadocivil = params.estadocivil
		cuenta_inf.aniversario = df.parse(params.fechaniversario)


		Cuenta cuenta = (Cuenta)session.registro_cuenta
		List<Hijo> hijos;
		if(session.registro_listaHijos == null){
			session.registro_listaHijos = new ArrayList<Hijo>();
		}
		hijos = (List<Hijo>)session.registro_listaHijos

		if(params.radiohijos.equals("1")){
			if(params.fechanachijo != null && params.generohijo !=null ){
				def fechas = params.fechanachijo
				def generos =  params.generohijo

				if(fechas instanceof String){
					render "String: " + fechas
					Hijo hijo =  new Hijo();
					hijo.fechaNacimiento = df.parse(fechas)
					hijo.genero = ( generos.equals("0") ) ? false : true
					hijo.padre = cuenta;
					hijos.add(hijo)
				}else if(fechas.size()>1){
					//render "List:" + fechas
					for(int i=0; i<fechas.size();i++){
						Hijo hijo =  new Hijo();
						hijo.fechaNacimiento = df.parse(fechas[i])
						hijo.genero = ( generos[i].equals("0") ) ? false : true
						hijo.padre = cuenta;
						hijos.add(hijo)
					}
				}else {
					println("Algo raro ocurrió")
				}
			}
		}
		else {
			hijos.clear()
		}

		if( params.accion.equals("1") ){
			redirect(controller: "registrar", action: "paso")
			return
		}
		else if( params.accion.equals("0") ){
			redirect(controller: "registrar", action: "paso5")
			return
		}
	}

	def paso7() {
		println("Params Paso 7: " + params)
		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			//redirect(controller: "registrar", action: "paso0")
		}
		cuenta = (Cuenta)session.registro_cuenta;
		
		/*
		Autopago autopago
		if(session.registro_cuenta_aut == null){
			session.registro_cuenta_aut = new Autopago()
		}
		autopago = (Autopago)session.registro_cuenta_aut
		
		autopago.autopagodireccion1 = "nada"
		
		
		autopago.autopagopaist = cuenta.pais
		autopago.autopagoestadot =  cuenta.estado
		autopago.autopagociudadt = cuenta.ciudad
		autopago.autopagotelefonot = cuenta.telefono_casa
		autopago.autopagocodigopostalt = cuenta.codigo_postal
		
		autopago.autopagocodigopostal = cuenta.codigo_postal
		render autopago.autopagocodigopostal
		*/
		
	}

	def savePaso7(){
		println("Params SavePaso 7: " + params)

		Cuenta cuenta;
		if(session.registro_cuenta == null) {
			redirect(controller: "registrar", action: "paso0")
			return
		}
		cuenta = (Cuenta)session.registro_cuenta;

		InformacionPersonal cuenta_inf;
		if(session.registro_cuenta_inf == null){
			session.registro_cuenta_inf = new InformacionPersonal()
		}
		cuenta_inf = (InformacionPersonal)session.registro_cuenta_inf;

		List<Hijo> hijos;
		if(session.registro_listaHijos == null){
			session.registro_listaHijos = new ArrayList<Hijo>();
		}
		hijos = (List<Hijo>)session.registro_listaHijos
		
		Autopago autopago
		if(session.registro_cuenta_aut == null){
			session.registro_cuenta_aut = new Autopago()
		}
		autopago = (Autopago)session.registro_cuenta_aut

		if( true ){
			//Autopago autopago = (Autopago)session.registro_cuenta_aut
			//Cuenta cuenta = (Cuenta)session.registro_cuenta
			cuenta_inf.cuenta = cuenta
			autopago.cuenta = cuenta
			boolean b = cuenta.validate() && cuenta_inf.validate()  && autopago.validate()
					println "Cuenta"+ cuenta.validate()
					println "Infr per"+ cuenta_inf.validate()
					println "Auto pago"+ autopago.validate() 
					//autopago.save(failOnError: true)
			if(b){
				//println("Cuenta listaaaaaaaa")
				cuenta.save(failOnError: true)
				cuenta_inf.save(failOnError: true)
				autopago.save(failOnError: true)
				for(Hijo h: hijos){
					h.save(failOnError: true)
				}
				println "Todo guardado!!!!"
				/*
				 String nombre = session.registro_cuenta.nombre_completo
				 String fechareg = new Date()
				 String usuario = session.registro_cuenta.nombre_usuario
				 String pasword = session.registro_cuenta.password
				 String correo = session.registro_cuenta.correo_electronico
				 String fechaautopago = new Date() //No se encuentra especificada fecha de autopago en la documentacion facilitada por los * analistas
				 String idmentor = session.registro_cuenta.mentor.nombre_usuario
				 String nombrementor = session.registro_cuenta.mentor.nombre_completo
				 //String equipo = "###Equipo"
				 //String liderequipo = "###Lider"
				 session.invalidate()
				 session.nombre = nombre
				 session.fechareg = fechareg
				 session.usuario = usuario
				 session.pasword = pasword
				 session.correo = correo
				 session.fechaautopago = fechaautopago
				 session.idmentor = idmentor
				 session.nombrementor = nombrementor
				 */
			}else {
				println "Aglo anda mal"
			}
			redirect(controller: "registrar", action: "paso7")
			return
		}


		if( params.accion.equals("1") ){
			redirect(controller: "registrar", action: "paso2")
			return
		}
		else if( params.accion.equals("0") ){
			redirect(controller: "registrar", action: "paso0")
			return
		}
		else {
			render "Success!!"
		}
	}

	def paso(){
		List hijos = (List<Hijo>)session.listaHijos

		int i = 0;
		for(Hijo h: hijos){
			render "::::: Hijo: " + h.fechaNacimiento + " es " + (h.genero?"Femenino":"Masculino :::::")
		}
	}

	def savePaso(){
		render params
	}

	def checkAvailable = {
		boolean available = false;
		int id;

		try{
			if(params.username != null){
				String nombre = params.username
				id = Cuenta.findByNombreCompleto(nombre).id
				if(id > 0){
					available = true
					println(nombre)
				}
				else{
					available = false
				}
			}
		}
		catch(Exception e){
		}

		response.contentType = "application/json"
		//render """{"available":${available}}"""
		render """{"available":${available},"id":${id}}"""
	}

	def disponible = {
		boolean available = false;
		println(params)
		try{
			if(params.nombreusuario != null){
				String nombre = params.nombreusuario
				if( Cuenta.findByNombre_usuario(nombre) ){
					available = false
				}
				else{
					available = true
				}
			}
		}
		catch(Exception e){
			println("Boom :(")
		}

		response.contentType = "application/json"
		render """{"available":${available}}"""
	}

}
