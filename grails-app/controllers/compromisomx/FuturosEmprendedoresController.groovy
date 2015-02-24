package compromisomx

import org.spockframework.runtime.extension.ExtensionException;

class FuturosEmprendedoresController {

    def index() { 
		def emprendedores  = FuturosEmprendedores.list();
		[ "emprendedores": emprendedores ];
	}
	
	def indexOrg() {
		def emprendedores  = FuturosEmprendedores.list();
		[ "emprendedores": emprendedores ];
	}

	
	def nombre_guardar(String nombre){
		
		Boolean exito = false;
		System.out.println("=========== PARAMETROS.......   nombre : "+ nombre);
		try{
			if(false)
			{
				System.out.println("EDITANDO");
				FuturosEmprendedores nombre_editar = FuturosEmprendedores.get(params.id);
				nombre_editar.nombre = nombre;
				nombre_editar.save(flush: true);
				exito = true;
				
			}
			else
			{
				System.out.println("NUEVO");
				FuturosEmprendedores futuroEmpre = new FuturosEmprendedores();
				futuroEmpre.nombre = nombre;
				futuroEmpre.save(flush: true);
				exito = true;
			}
		}
		catch(ExtensionException e){
			exito = false;
		}
		System.out.println("exito = "+ exito);
		return exito;
	}
	def eliminar(){
		System.out.println("========  ELIMINAR id: "+ params.id_eliminar);
		String id = params.id_eliminar;
	
		FuturosEmprendedores emprendedor;
		emprendedor = FuturosEmprendedores.get(id);
		if(emprendedor != null){
			emprendedor.delete(flush: true)
		}
		else{
			System.out.println("===== NO EXISTE ELIMINAR =====");
						
		}
		redirect(action: "index")
		return
	}
}
