package compromisomx

import java.text.DateFormat;
import java.text.SimpleDateFormat;

//cuenta   =   session.cuenta   =    Cuenta.get( session.cuenta.id )    //No borrar código, que puede servir

class CuentaController {
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd")

	def index() {
		/* 
		 def TodasCuenta = Cuenta.findAllById(34)
		 [TodasCuenta:TodasCuenta]
		 */
		Cuenta cuenta
		if(session.cuenta == null){
			//println session.cuenta
			redirect(controller: "login", action: "index")
			return
		}
		//println session.cuenta
		cuenta = (Cuenta)session.cuenta
		//cuenta = Cuenta.get(session.cuenta)
		[cuenta:cuenta]
	}

	def crear(){
		/*
		 def cuenta = new Cuenta(params)
		 cuenta.save(flush:true)
		 redirect(controller: "cuenta", action: "index")
		 */
	}

	def actualizarcuenta(){
		//println params
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta

		/*
		 cuenta = (Cuenta)session.cuenta
		 cuenta = Cuenta.get(cuenta.id)
		 session.cuenta
		 */

		//cuenta = Cuenta.get(session.cuenta.id)

		//cuenta = Cuenta.get(session.cuenta.id)
		//Cuenta p = Cuenta.get(34)
		//cuenta.nombre_usuario = params.nombre_usuario

		cuenta.correo_electronico = params.correo_electronico
		cuenta.codigo_verificacion1 = params.codigo_verificacion1
		cuenta.telefono_casa = params.telefono_casa
		cuenta.telefono_movil = params.telefono_movil
		cuenta.codigo_verificacion2 = params.codigo_verificacion2
		cuenta.idioma = params.idioma
		cuenta.save(flush:true)
		redirect(controller: "cuenta", action: "index")
	}


	def modificar(){
		/*
		 //	render params
		 //Cuenta cuenta = Cuenta.get(params.id)
		 Cuenta cuenta
		 if(session.cuenta == null){
		 redirect(controller: "login", action: "index")
		 return
		 }
		 cuenta = (Cuenta)session.cuenta
		 cuenta.curp = params.curp
		 cuenta.nombres = params.nombres
		 cuenta.primer_apellido = params.primer_apellido
		 cuenta.segundo_apellido = params.segundo_apellido
		 cuenta.fecha_de_nacimiento = params.fecha_de_nacimiento
		 cuenta.idioma = params.idioma
		 cuenta.genero = params.genero
		 cuenta.codigo_postal = params.codigo_postal
		 cuenta.colonia = params.colonia
		 cuenta.calle = params.calle
		 cuenta.numero_exterior = params.numero_exterior
		 cuenta.numero_interior = params.numero_interior
		 cuenta.manzana = params.manzana
		 cuenta.cruzamientos = params.cruzamientos
		 cuenta.referencias = params.referencias
		 cuenta.telefono_casa = params.telefono_casa
		 cuenta.otro_telefono = params.otro_telefono
		 cuenta.telefono_movil = params.telefono_movil
		 cuenta.codigo_verificacion1 = params.codigo_verificacion1
		 cuenta.correo_electronico = params.correo_electronico
		 cuenta.codigo_verificacion2 = params.codigo_verificacion2
		 cuenta.nombre_usuario = params.nombre_usuario
		 cuenta.password = params.password
		 cuenta.id_ciudad = params.id_ciudad
		 cuenta.save(flush:true)
		 redirect(controller: "cuenta", action: "index")
		 */
	}


	def delete(){
		/*
		 def cuenta = Cuenta.get(params.id)
		 //render params
		 if (cuenta) {
		 try {
		 cuenta.delete()
		 redirect(controller: "cuenta", action: "index")
		 }
		 catch (org.springframework.dao.DataIntegrityViolationException e) {
		 redirect(action: "show", id: params.id)
		 }
		 }
		 */
	}

	/* SE CREO LA VISTA DE LA INFORMACIÓN LEGAL*/
	def informacionlegal(){
		//def CurpUsuario = Cuenta.findById(34)
		//[CurpUsuario:CurpUsuario]
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = (Cuenta)session.cuenta
		[cuenta:cuenta]
	}

	/* SE CREO LA EDICIÓN DE LA INFORMACIÓN LEGAL */
	def editarinformacionlegal(){

		/*
		 def EditarCurpUsuario = Cuenta.findById(34)
		 [EditarCurpUsuario:EditarCurpUsuario]
		 */
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = (Cuenta)session.cuenta
		[cuenta:cuenta]
	}

	/* SE CREO LA FUNCIÓN PARA GUARDAR LA INFORMACIÓN LEGAL MODIFICADA */
	def SaveEditInformacionLegal(){
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		//Cuenta c = Cuenta.get(34)
		cuenta.rfc = params.rfc_edit
		//println cuenta.save(failOnError: true, flush:true)
		cuenta.save(flush:true)

		redirect(controller: "cuenta", action: "editarinformacionlegal")
	}

	/* SE CREO LA FUNCIÓN PARA PODER ACCEDER AL PERFIL */
	def perfil(){
		//Cuenta perfil = Cuenta.findById(34)
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		println cuenta.mentor.nombres
		[cuenta : cuenta]
	}

	/* METÓDO QUE GUARDA LA IMAGEN DEL PERFIL */
	def SaveFotoPerfil(){
		//Cuenta c = Cuenta.get(34)
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		def webRootDir = servletContext.getRealPath("/")
		def uploadedFile = request.getFile('imagenperfil')
		def userDir = new File(webRootDir, "images/perfil/")
		userDir.mkdirs()
		String fileName = cuenta.id + "-" + uploadedFile.originalFilename
		uploadedFile.transferTo( new File( userDir, fileName))
		String temp = cuenta.imagen_perfil
		cuenta.imagen_perfil = fileName
		cuenta.save(flush:true)
		File file = new File(webRootDir, "images/perfil/" + temp)
		println file.delete()

		redirect(controller: "cuenta", action: "perfil")
	}

	/* SE REALIZO EL METÓDO PARA PODER CARGAR LA EDICIÓN DEL PERFIL */
	def editarperfil(){
		//Cuenta perfil = Cuenta.findById(34)

		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta

		def TodosLosPaises = Pais.list()
		def estados = Estado.findAllByPais(cuenta.pais)
		def ciudades = Ciudad.findAllByEstado(cuenta.estado)
		def codigos = CodigoPostal.findAllByCiudad(cuenta.ciudad)
		[cuenta : cuenta, TodosLosPaises : TodosLosPaises, TodosLosEstados:estados, TodosLosMunicipio:ciudades, CP:codigos]
	}

	/* SE CREO LA FUNCIÓN PARA PODER ACCEDER MODIFICAR CONTRASEÑA */
	def contrasena(){
		def EditarContrasena = Cuenta.findAllById(34)
		[Editarcontrasena:EditarContrasena]
	}

	/* SE CREO EL FORMULARIO PARA CARGAR UBICACIÓN */
	def formeditperfil(){
	}

	/* SE CREO LA FUNCIÓN QUE MUESTRA A TODOS LOS ESTADOS DEL PAIS ELEJIDO */
	def CargarEstado(){
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		def TodosLosEstados = Estado.findAllByPais(Pais.get(params.id))
		render(view:'formeditperfil', model:[TodosLosEstados : TodosLosEstados, cuenta:cuenta])
	}

	/* SE CREO EL METÓDO PARA MOSTRAR LOS MUNICIPIOS */
	def CargarMunicipio(){
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		def TodosLosMunicipio = Ciudad.findAllByEstado(Estado.get(params.id))
		println TodosLosMunicipio
		render(view:'formeditperfil', model:[TodosLosMunicipio : TodosLosMunicipio, cuenta:cuenta])
	}

	def cargarCP(){
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		println "CPs" + params
		def CP = CodigoPostal.findAllByCiudad(Ciudad.get(params.id))
		println "CP:" + CP
		render(view:'formeditperfil', model:[CP:CP, cuenta:cuenta])
	}

	/* SE CREO LA FUNCIÓN DE MODIFICAR LA UBICACIÓN */
	def EditarUbicacion(){
		println params
		//Cuenta c = Cuenta.get(34)
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		cuenta.pais = Pais.get(params.pais)
		cuenta.codigo_postal = CodigoPostal.get(params.cpostal)
		cuenta.estado = Estado.get(params.estado)
		cuenta.ciudad = Ciudad.get(params.ciudad)

		cuenta.nombre_expuesto = params.nombreExpuesto

		cuenta.save(flush:true)
		redirect(controller: "cuenta", action: "editarperfil")
	}

	/* SE CREO LA VISTA DEL PAIS, ESTADO, DIRECCIÓN */
	def formdireccion(){
	}

	/* SE CREO LA VISTA DE EDITAR LA DIRECCIÓN */
	def direccion(){
		//Cuenta cuenta = Cuenta.findById(34)

		/*
		 def TodosLosPaises = Pais.list()
		 def TotasLasColonias = Colonia.findAllByCodigopostal(CodigoPostal.get(1))
		 [TodosLosPaises : TodosLosPaises, TotasLasColonias : TotasLasColonias, direccionuser : cuenta]
		 */
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta

		def TodosLosPaises = Pais.list()
		def estados = Estado.findAllByPais(cuenta.pais)
		def ciudades = Ciudad.findAllByEstado(cuenta.estado)
		def codigos = CodigoPostal.findAllByCiudad(cuenta.ciudad)
		[cuenta : cuenta, TodosLosPaises : TodosLosPaises, TodosLosEstados:estados, TodosLosMunicipio:ciudades, CP:codigos]
	}

	/* SE CREO LA FUNCIÓN QUE MUESTRA A TODOS LOS ESTADOS DEL PAIS ELEJIDO */
	def DirEstado(){
		def TodosLosEstado = Estado.findAllByPais(Pais.get(params.id))
		render(view:'formdireccion', model:[TodosLosEstado : TodosLosEstado])
	}

	/* SE CREO EL METÓDO PARA MOSTRAR LOS MUNICIPIOS */
	def DirMunicipio(){
		def TodosLosMunicipios = Ciudad.findAllByEstado(Estado.get(params.id))
		render(view:'formdireccion', model:[TodosLosMunicipios : TodosLosMunicipios])
	}

	/* METÓDO QUE GUARDA LA INFORMACIÓN DE LA DIRECCIÓN */
	def SaveDireccion(){
		//Cuenta cuenta = Cuenta.findById(34)
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta

		cuenta.colonia = Colonia.get(params.colonia)
		cuenta.calle = params.calle
		cuenta.manzana = params.manzana
		cuenta.numero_exterior = params.numero_exterior
		cuenta.numero_interior = params.numero_interior
		cuenta.cruzamientos = params.cruzamientos
		cuenta.referencias = params.referencias
		cuenta.pais = Pais.get(params.pais)
		cuenta.estado = Estado.get(params.estado)
		cuenta.ciudad = Ciudad.get(params.ciudad)
		cuenta.codigo_postal = CodigoPostal.get(params.codigo_postal)
		cuenta.save(flush:true)
		redirect(controller: "cuenta", action: "direccion")
	}

	/* SE CREO EL METÓDO DE LA VISTA DE INFORMACIÓN COAPLICABLE*/
	def infocoaplicante(){
		//Cuenta cuenta = Cuenta.findById(34)
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		[cuenta : cuenta]
	}

	/* SE CREO EL METÓDO PARA LA VISTA DE REDES SOCIALES */
	def redesociales(){
		//def RedSocial = RedSocial.findByCuenta(Cuenta.get(34))
		//[RedSocial : RedSocial]
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta
		InformacionPersonal info = InformacionPersonal.findByCuenta(cuenta)
		[cuenta : cuenta, info: info]
	}

	/* METÓDO PARA AGREGAR LAS REDES SOCIALES */
	def SaveRedSocial(){
		//RedSocial s = RedSocial.findByCuenta(Cuenta.get(34))
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta

		InformacionPersonal info = InformacionPersonal.findByCuenta(cuenta)
		info.facebook = params.facebook
		info.twitter = params.twitter
		info.skype = params.skype
		info.facetime = params.facetime
		info.whatsapp = params.whastapp
		info.save(flush:true)

		redirect(controller: "cuenta", action: "redesociales")
	}

	/* SE REALIZO EL METÓDO DE REALIZAR LA VISTA DE NUESTRO MOVIMIENTO */
	def nuestromovimiento(){
		//Cuenta cuenta = Cuenta.findById(34)
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta


		InformacionPersonal info = InformacionPersonal.findByCuenta(cuenta)
		def profesionlist = RegistroProfesion.list()//Se realiza el listados de las profesiones
		def ocupacion = RegistroOcupacion.list()// Se realiza el listado de las ocupaciones
		def pasatiempo = RegistroPasatiempos.list()
		def actividades = RegistroOtrasActividades.list()

		def hijos = Hijo.findAllByPadre(cuenta)
		//def hijos = Hijo.findAllByPadre(Cuenta.get(1))
		println "Hijoss: " + hijos.size()

		[info: info, cuenta : cuenta, profesion : profesionlist, ocupacion : ocupacion, pasatiempo : pasatiempo, actividades: actividades, hijos: hijos]
	}

	def saveNuestroMovimiento(){
		/*
		 render params
		 if(true){
		 return
		 }
		 */
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta

		InformacionPersonal cuenta_inf = InformacionPersonal.findByCuenta(cuenta)

		cuenta_inf.pasatiempo = RegistroPasatiempos.get(Long.parseLong(params.pasatiempo))
		cuenta_inf.profesion = RegistroProfesion.get(Long.parseLong(params.profesion))
		cuenta_inf.otrasactividades = RegistroOtrasActividades.get(Long.parseLong(params.actividades))
		cuenta_inf.ocupacion = RegistroOcupacion.get(Long.parseLong(params.ocupacion))

		cuenta_inf.tallaPlayera = params.talla_playera;
		cuenta_inf.tallaCamisa = params.talla_camisa;
		cuenta_inf.tallaZapato = params.talla_zapato;

		cuenta_inf.trabajo_inicio = params.trabajo_inicio
		cuenta_inf.trabajo_fin = params.trabajo_fin
		cuenta_inf.libre_inicio = params.libre_inicio
		cuenta_inf.libre_fin = params.libre_fin

		cuenta_inf.estadocivil = params.estadocivil
		if(params.fechaniversario !=null){
			cuenta_inf.aniversario = df.parse(params.fechaniversario)
		}else{
			cuenta_inf.aniversario = null
		}
		cuenta_inf.save(failOnError: true, flush:true)

		//Hijos
		List<Hijo> hijos = new ArrayList<Hijo>();

		if(params.fechanachijo != null && params.generohijo !=null ){
			def fechas = params.fechanachijo
			def generos =  params.generohijo
			
			Hijo.executeUpdate("delete Hijo h where h.padre = :padre", [padre:cuenta])
			
			if(fechas instanceof String){
				//render "String: " + fechas
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
		}else{
			Hijo.executeUpdate("delete Hijo h where h.padre = :padre", [padre:cuenta])
		}

		for(Hijo h: hijos){
			h.save(failOnError: true)
		}
		redirect(controller: "cuenta", action: "nuestromovimiento")
		return
	}

	def validacontrasena(){
		//Cuenta cuenta = Cuenta.get(34)
		println params
		Cuenta cuenta
		if(session.cuenta == null){
			redirect(controller: "login", action: "index")
			return
		}
		cuenta = session.cuenta

		if(cuenta.password.equals( params.password_actual ) ){
			if(params.password_nueva .equals (params.password_confirmada) ){
				cuenta.password = params.password_nueva
				cuenta.save(flush:true)
				flash.message = "Contraseña guardada"
				redirect(controller: "cuenta", action: "contraseña")
			}
			else{
				flash.message = "La contraseña no coincide"
				redirect(controller: "cuenta", action: "contraseña")
			}
		}
		else
		{
			flash.message1 = "Su antigua contraseña es incorrecta"
			redirect(controller: "cuenta", action: "contraseña")
		}
	}
}
