package compromisomx

import java.text.SimpleDateFormat
import org.springframework.web.bind.annotation.SessionAttributes;

class LoginController {

	def index = {
//		def TodasCuentas = Cuenta.all
//		[TodasCuentas:TodasCuentas]
	}

	def login = {
		/*
		def cuentas = Cuenta.executeQuery("SELECT A.nombres,A.primer_apellido,A.segundo_apellido,A.id, A.nombre_usuario FROM ${Cuenta.name} A where A.nombre_usuario = ? and A.password = ? ",
				[params.nombre_usuario, params.password])
		*/
		//session.invalidate()
		Cuenta cuenta = Cuenta.findByNombre_usuarioAndPassword(params.nombre_usuario, params.password)
		if(cuenta != null){
			//render ""+cuenta.nombreCompleto
			
			session.cuenta = (Cuenta)cuenta
			//println "Mentor: "  + session.cuenta.mentor.nombreCompleto
			//session.cuenta = cuenta.id
			
			/*
			def cuenta = cuentas[0]
			Cuenta cuenta = Cuenta.get(cuentas[0])
			session.cuenta = cuenta
			*/
			//session.user=cuenta[0]
			//session.primer_apellido=cuenta[1]
			//session.segundo_apellido=cuenta[2]
			
			//Long getid=cuenta[3]
			//render getid
			/*
			def cuentasdetalle = CuentaDetalle.executeQuery("SELECT A.categoria,A.equipo,A.estatus,A.fecha_autopago,A.imagen,A.mentor,A.mensaje FROM ${CuentaDetalle.name} A where A.id_cuenta = ? ",
				[getid])
			def cuentadetalle = cuentasdetalle[0]
			*/
			/*
			String f=cuentadetalle[3]
			
			java.util.Date date = new java.util.Date();
			java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd/MM/yyyy");
			String fecha = sdf.format(cuentadetalle[3]);
			
			String stat=null
			if(cuentadetalle[2].equals(true)){stat="Activo"
			}else{stat="Inactivo"}
			session.categoria=cuentadetalle[0]
			session.equipo=cuentadetalle[1]
			session.estatus=stat
			session.fecha_autopago=fecha
			session.imagen=cuentadetalle[4]
			session.mentor=cuentadetalle[5]
			session.mensaje=cuentadetalle[6]
			*/
			//render 
			//println "Inicia sesión " + cuenta.mentor.nombreCompleto
			redirect(controller: "inicio", action: "index")
			return
			
		}else{
			//render "Login fallido ${cuentas}"
			flash.message = "Usuario y/o password incorrectos"
			redirect(controller: "login", action: "index")
		}
	}

	def logout = {
		try{
			session.invalidate()
			//session.user = null
			redirect(controller: "login", action: "index")
		}catch(Exception e){
			redirect(controller: "login", action: "index")
		}
	}
}
