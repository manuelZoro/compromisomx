package compromisomx

class LugaresDeEnvioController {

   def index() { 
		def TodosLugares = LugaresDeEnvio.all;

		[TodosLugares:TodosLugares]	
	}
   
   def crear(){
	   def lugar = new LugaresDeEnvio(params)
	   lugar.save()
	   redirect(controller: "LugaresDeEnvio", action: "index")
   }
   
   def getEdit(String id){
	   
	   LugaresDeEnvio lugar;
	   if((id==null)||(id =="0")){
		   lugar = new LugaresDeEnvio();
	   }
	  else{
		   lugar= LugaresDeEnvio.get(id);
		  }
	  
	  [Lugar: lugar]
   }
   
   def getDelete(String id){
	   
	   LugaresDeEnvio lugar;
	   if((id==null)||(id =="0")){
		   lugar = new LugaresDeEnvio();
	   }
	  else{
		   lugar= LugaresDeEnvio.get(id);
		  }
	  
	  [Lugar: lugar]
   }
   
   def save(){
	   
	   def LugarLocal = new LugaresDeEnvio(params);
	   
	   if( params.id != "")
		   LugarLocal.id = params.id.toInteger();
		
		   if( LugarLocal.id == 0){
				 LugarLocal.save();
		   }
		   else {
			   
			   LugaresDeEnvio Modeleditar = new LugaresDeEnvio();
			   Modeleditar = LugaresDeEnvio.get(LugarLocal.id);
			   
			   Modeleditar.nombre = LugarLocal.nombre;
			   Modeleditar.primerapellido = LugarLocal.primerapellido;
			   Modeleditar.segundoapellido = LugarLocal.segundoapellido;
			   Modeleditar.idpais = LugarLocal.idpais;
			   Modeleditar.idestado = LugarLocal.idestado;
			   Modeleditar.idciudad = LugarLocal.idciudad;
			   Modeleditar.idcolonia = LugarLocal.idcolonia;
			   Modeleditar.cp = LugarLocal.cp;
			   Modeleditar.calle = LugarLocal.calle;
			   Modeleditar.numext = LugarLocal.numext;
			   Modeleditar.numint = LugarLocal.numint;
			   Modeleditar.manzana = LugarLocal.manzana;
			   Modeleditar.cruzes = LugarLocal.cruzes;
			   Modeleditar.referencias = LugarLocal.referencias;
			   

			   Modeleditar.save(flush : true);
			   }
	   		   //redirect(controller: "LugaresDeEnvio", action: "index")
			   redirect(action: "index")
			   //return
   }
   
   def delete(){
	   def LugarLocal = new LugaresDeEnvio(params);
	   LugaresDeEnvio B_eliminar = new LugaresDeEnvio();
	   B_eliminar = LugaresDeEnvio.get(params.id);
	   B_eliminar.delete(flush:true);
	   redirect(action : "index");
	   return;

}
   
   
}
