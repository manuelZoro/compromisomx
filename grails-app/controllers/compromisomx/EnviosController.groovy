package compromisomx

class EnviosController {

    def index() { 
		//aqui se debe pasar el id del seleccionado para cargar su info
		def envios = Envios.findAllByClave_padrino(1034);
		Cuenta cuenta = Cuenta.get(1400);
		[vistaEnvios:envios,cuenta_v:cuenta]
	}
	
	def envio_detalles(String id, int env) {
		//def detalles2 = Envios.find("from Envios where id=? and num_envio=?",['1400',env]); para buscar por id y no por padrino
		def detalles = Envios.findByClave_padrinoAndNum_envio(1034,env);
		Cuenta cuenta = Cuenta.get(1400);
		def dir_actual;
		def descripcion = Envio_descripcion.findAll("from Envio_descripcion as e where envio_id='1'");
		[detalles_v:detalles, cuenta_v:cuenta, descripcion_v:descripcion]
	}
	
	def direcciones(int env, int dir){
		
		System.out.println("====== "+env+"=======================");
		def detalles = Envios.findByClave_padrinoAndNum_envio(1034,env);
		Cuenta metodo_pago_editar = Cuenta.get(1400);
		def direcciones = Direcciones.findAll("from Direcciones as d where Cuenta_id='1400'");
		def dir_actual;
		if (dir!=null){
		 dir_actual = dir;
		}
		else
		{dir_actual = 0;}
		[cuenta_v:metodo_pago_editar,direcciones_v:direcciones,detalles_v:detalles,diractual_v:dir_actual]
	}
	
	def dir_selec(String id,int env,int dir){
		def detalles = Envios.findByClave_padrinoAndNum_envio(1034,env);
		def dir_actual;
		if (dir!=null){
			dir_actual = dir;
		}
		else
		{dir_actual = 0;}
		def direcciones = Direcciones.findAll("from Direcciones as d where Cuenta_id='1400'");
		[direcciones_v:direcciones,detalles_v:detalles,diractual_v:dir_actual]
	}
	
	def act_dir(int env, long id_){
		long i=id_;
		Envios envio_a_editar = Envios.findByNum_envio(env);
		Direcciones registroDireccion = Direcciones.get(i);
		envio_a_editar.direccion = registroDireccion;
		envio_a_editar.save(flush : true);
		redirect(action: "envio_detalles", params: [env: env])
		return
		
		
		/*Cuenta metodo_pago_editar = Cuenta.get(1400);
		def detalles = Envios.findByClave_padrinoAndNum_envio(1034,env);
		def direcciones = Direcciones.findAll("from Direcciones as d where Cuenta_id='1400'");
		[cuenta_v:metodo_pago_editar,direcciones_v:direcciones,detalles_v:detalles,diractual_v:dir_actual]*/
	}
	
	def formas_de_pago(String id, int env){
		def detalles = Envios.findByClave_padrinoAndNum_envio(1034,env);
		Cuenta metodo_pago_editar = Cuenta.get(1400);
		def direcciones = Direcciones.findAll("from Direcciones as d where Cuenta_id='1400'");
		def pagos = Formas_de_pago.findAll("from Formas_de_pago as f where cuenta_id='1400'");
		[cuenta_v:metodo_pago_editar,direcciones_v:direcciones,detalles_v:detalles,pagos_v:pagos]
	}
	
	def pago_selec(String id,int env,int pago){
		def detalles = Envios.findByClave_padrinoAndNum_envio(1034,env);
		def pagos = Formas_de_pago.findAll("from Formas_de_pago as f where cuenta_id='1400'");
		System.out.println("====== el pago llega como "+pago+"=======================");
		def pago_actual;
		if (pago!=null){
			pago_actual = pago;
		}
		else
		{pago_actual = 0;}
		[detalles_v:detalles,pago:pago_actual,pagos_v:pagos]
	}
	
	def act_pago(int env, long id_){
		long i=id_;
		Envios envio_a_editar = Envios.findByNum_envio(env);
        Formas_de_pago registroPago = Formas_de_pago.get(i);
		envio_a_editar.pago = registroPago;
		envio_a_editar.save(flush : true);
		redirect(action: "envio_detalles", params: [env: env])
		return
		
		
		/*Cuenta metodo_pago_editar = Cuenta.get(1400);
		def detalles = Envios.findByClave_padrinoAndNum_envio(1034,env);
		def direcciones = Direcciones.findAll("from Direcciones as d where Cuenta_id='1400'");
		[cuenta_v:metodo_pago_editar,direcciones_v:direcciones,detalles_v:detalles,diractual_v:dir_actual]*/
	}
	
	def guardar_pago(Long id_,params){
		def pagos = Formas_de_pago.findAll("from Formas_de_pago as f where cuenta_id='1400'");
	//	Formas_de_pago nuevo_pago = new Formas_de_pago(params);
		nuevo_pago.save(flush:true);
		redirect(action: "index")
		return
	}
	
	
	def guardarDireccion(){
		def direccionlocal = new Direcciones(params);
		System.out.println(params);
		Cuenta dir_editar = Cuenta.get(params.idcliente);
		direccionlocal.cuenta = dir_editar;
		direccionlocal.save(flush : true, insert: true, failOnError: true);
		redirect(action: "direcciones", params: [env: params.envio])
		return
	}
	
	
	def guardarForma_pago(){
		def nuevo_pago = new Formas_de_pago(params);
		System.out.println(params);
		Cuenta metodo_pago_editar = Cuenta.get(params.idcliente);
		nuevo_pago.cuenta = metodo_pago_editar;		
		def fecha = '01/'+params.mes+'/'+params.year;
		nuevo_pago.expiracion =  new Date().parse("dd/MM/yyyy", fecha);

		nuevo_pago.save(flush : true, insert: true, failOnError: true);
		redirect(action: "formas_de_pago", params: [env: params.envio])
		return
	}

}
