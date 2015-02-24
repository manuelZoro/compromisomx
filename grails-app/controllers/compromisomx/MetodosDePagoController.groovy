package compromisomx

class MetodosDePagoController {

    def index() {
		def metodosPago  = MetodosDePago.list();
		[metodosPago: metodosPago];
	}
	
	def guardar(){
		
		def metodo_pago = new MetodosDePago(params);
		System.out.println("===== GUARDAR Y/O EDITAR ====  id : "+ params.id  );
		if(params.id != "0")
		{
			System.out.println("==== EDITANDO ====");
			MetodosDePago metodo_pago_editar = MetodosDePago.get(params.id);
			
			metodo_pago_editar.tipo_tarjeta = metodo_pago.tipo_tarjeta;
			metodo_pago_editar.titular_tarjeta = metodo_pago.titular_tarjeta;
			metodo_pago_editar.numero_tarjeta = metodo_pago.numero_tarjeta;
			metodo_pago_editar.mes_expiracion = metodo_pago.mes_expiracion;
			metodo_pago_editar.anio_expiracion = metodo_pago.anio_expiracion;
			metodo_pago_editar.codigo_seguridad = metodo_pago.codigo_seguridad;
			metodo_pago_editar.direccion_facturacion = metodo_pago.direccion_facturacion;
			metodo_pago_editar.direccion = metodo_pago.direccion;
			metodo_pago_editar.id_pais = metodo_pago.id_pais;
			metodo_pago_editar.id_estado = metodo_pago.id_estado;
			metodo_pago_editar.id_ciudad = metodo_pago.id_ciudad;
			metodo_pago_editar.codigo_postal = metodo_pago.codigo_postal;
			metodo_pago_editar.telefono = metodo_pago.telefono;
			
			metodo_pago_editar.save(flush: true);
		}
		else
		{
			metodo_pago.direccion = " " + metodo_pago.direccion;
			metodo_pago.save(flush: true);
		}
		
		redirect(action: "index")
		return
	}
	
	def editar(String id){
		System.out.println("==== CARGAR FORMULARIO ==== id: "+ id);
		MetodosDePago metodo;
		
		if(id == "" || id == null)
		  metodo = new MetodosDePago();
		else
		  metodo = MetodosDePago.get(id);
						 
		[ metodo:metodo ];
	}
	
	def eliminar(){
		System.out.println("========  ELIMINAR id: "+ params.id_eliminar);
		String id = params.id_eliminar;
		MetodosDePago metodo;
		metodo = MetodosDePago.get(id);
		if(metodo != null){
			System.out.println("===== EXISTE ELIMINAR =====");
			System.out.println("===== ID: "+ metodo.id);
			metodo.delete(flush: true)
		}
		else{
			System.out.println("===== NO EXISTE ELIMINAR =====");
			System.out.println("===== ID: "+ metodo.id);
		}
		redirect(action: "index")
		return
	}
}
