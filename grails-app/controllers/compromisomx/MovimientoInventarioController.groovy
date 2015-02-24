package compromisomx
import java.text.DateFormat;
import java.sql.Time;
import java.text.DateFormat
import java.text.SimpleDateFormat
import java.util.Date;

import grails.converters.JSON
class MovimientoInventarioController {
	DateFormat toCalendarMuestra = new SimpleDateFormat("dd/MM/yyyy")
	DateFormat toCalendarGuarda = new SimpleDateFormat("yyyy-MM-dd")
	Date hoy= new Date()
	def fechaActual=toCalendarMuestra.format(hoy)
	
    def index() {
		List claseMovimiento= Colonia.list()
		def maestro=MovInvCab.list();
		[claseMovimiento:claseMovimiento,maestro:maestro,fecha:toCalendarMuestra,fechaActual:fechaActual]
	}
	
	def crearMovimientoFin() {
		int f
		f=MovInvCab.count()
		MovInvCab temp=MovInvCab.get(session.idmov)
		temp.tipoMovto=TipoMovInv.get(params.movi)
		temp.observaciones=params.observaciones
		if(((params.fecha).substring(2,3)).equals("/")){
			String x=(params.fecha).substring(6,10)+"-"+(params.fecha).substring(3,5)+"-"+(params.fecha).substring(0,2)
			temp.fechaMovimiento=toCalendarGuarda.parse(x)
		}
		else{
			temp.fechaMovimiento=toCalendarGuarda.parse(params.fecha)
		}
		temp.cantArtic=params.cantidadArticulos.toInteger()
		temp.montoDocumento=(params.totalImporte).toDouble()
		temp.foliador=f
		temp.save(flush:true,failOnError:true)
		redirect(controller: "MovimientoInventario", action: "index")
	}
	
	def modificarMovimientoFin() {
		MovInvCab temp=MovInvCab.get(session.idMod)
		//temp.tipoMovto=TipoMovInv.get(params.movi)
		temp.observaciones=params.observaciones
		if(((params.fecha).substring(2,3)).equals("/")){
			String x=(params.fecha).substring(6,10)+"-"+(params.fecha).substring(3,5)+"-"+(params.fecha).substring(0,2)
			temp.fechaMovimiento=toCalendarGuarda.parse(x)
		}
		else{
			temp.fechaMovimiento=toCalendarGuarda.parse(params.fecha)
		}
		temp.cantArtic=params.cantidadArticulos.toInteger()
		temp.montoDocumento=(params.totalImporte).toDouble()
		temp.save(flush:true,failOnError:true)
		
		MovInvDet.executeUpdate("delete MovInvDet c where c.claveAlmacen=:clave", [clave:session.idMod])
		def articulos= MovInvDetTemp.findAllByClaveAlmacen(session.idMod)
		for (Var in articulos) {
			MovInvDet anade = new MovInvDet()
			anade.articulo=Articulos.get(Var.articulo.id)
			anade.claveAlmacen=Var.claveAlmacen
			anade.cantidad=Var.cantidad
			anade.precio=Var.precio
			anade.observaciones=Var.observaciones
			anade.partida=Var.partida
			anade.save(flush:true)
		}
		redirect(controller: "MovimientoInventario", action: "index")
	}
	
	def crearMovimientoTemp() {
		MovInvCab anademovimientotemp= new MovInvCab()
		anademovimientotemp.claveAlmacen="000"
		anademovimientotemp.tipoMovto=TipoMovInv.get(0)
		anademovimientotemp.save(flush:true,failOnError:true)
		session.idmov=anademovimientotemp.id
		redirect(controller: "MovimientoInventario", action: "insertarMovimientoInventario")
	}
	
	def crearModificaMovimientoTemp() {
		session.idMod=params.idMod
		MovInvDetTemp.executeUpdate("delete MovInvDetTemp")
		def articulos= MovInvDet.findAllByClaveAlmacen(session.idMod)
		for (Var in articulos) {
			MovInvDetTemp anadetemp = new MovInvDetTemp()
			anadetemp.articulo=Articulos.get(Var.articulo.id)
			anadetemp.claveAlmacen=Var.claveAlmacen
			anadetemp.cantidad=Var.cantidad
			anadetemp.precio=Var.precio
			anadetemp.observaciones=Var.observaciones
			anadetemp.partida=Var.partida
			anadetemp.save(flush:true)
		}
		redirect(controller: "MovimientoInventario", action: "modificarMovimientoInventario")
	}
	
	def insertarMovimientoInventario() {
		def articulos= MovInvDet.findAllByClaveAlmacen(session.idmov)
		List tipomov= TipoMovInv.list()
		[articulos:articulos,tipomov:tipomov,fechaActual:fechaActual]
	}
	
	def consultarMovimientoInventario() {
		String clase=""
		String fecha=""
		if(params.idMov!=null){
			session.idmov=params.idMov
			def articulos= MovInvDet.findAllByClaveAlmacen(session.idmov)
			MovInvCab movinvcab=MovInvCab.get(session.idmov)
			if((movinvcab.tipoMovto.clase).equals("EN")){
				clase="Entrada"
			} else if((movinvcab.tipoMovto.clase).equals("SA")){
				clase="Salida"
			} else if((movinvcab.tipoMovto.clase).equals("TR")){
				clase="Traspaso"
			} else{
				clase="Seleccionar Clase Movimiento"
			}
			try{
				fecha=toCalendarMuestra.format(movinvcab.fechaMovimiento)
			}catch(Exception ex){
			}
			[articulos:articulos,fechaMov:fecha,almacen:movinvcab.claveAlmacen,noMovi:movinvcab.id,
				obser:movinvcab.observaciones,clase:clase,tipoMovimiento:(movinvcab.tipoMovto).descripcion]
		}
	}
	
	def modificarMovimientoInventario() {
		String clase=""
		String fecha=""
		String fechaChrome=""
		if(session.idMod!=null){
			MovInvCab movinvcab=MovInvCab.get(session.idMod)
			if((movinvcab.tipoMovto.clase).equals("EN")){
				clase="Entrada"
			} else if((movinvcab.tipoMovto.clase).equals("SA")){
				clase="Salida"
			} else if((movinvcab.tipoMovto.clase).equals("TR")){
				clase="Traspaso"
			} else{
				clase="Seleccionar Clase Movimiento"
			}
			def articulos= MovInvDetTemp.findAllByClaveAlmacen(session.idMod)
			List tipomov= TipoMovInv.list()
			try{
				fecha=toCalendarMuestra.format(movinvcab.fechaMovimiento)
				fechaChrome=toCalendarGuarda.format(movinvcab.fechaMovimiento)
			}catch(Exception ex){
			}
			[articulos:articulos,tipomov:tipomov,fechaMov:fecha,
				almacen:movinvcab.claveAlmacen,noMovi:movinvcab.id,obser:movinvcab.observaciones,clase:clase,tipoMovimiento:(movinvcab.tipoMovto).descripcion,fechaChrome:fechaChrome]
		}
	}
	
	def narticulo(int id){
		def Articulos = Articulos.list()
		int c
		int desde=id
		if(desde==0){
			c=MovInvDet.countByClaveAlmacen(session.idmov)
			c=c+1
		}
		else{
			c=MovInvDetTemp.countByClaveAlmacen(session.idMod)
			c=c+1
		}
		[Articulos:Articulos,c:c,desde:desde]
	}
	
	def marticulo(int id){
		
	}
	
	def cargaTipoMovimiento(){
		List tipomov= TipoMovInv.findAllByClase(params.claseMovimiento,[sort:"descripcion"])
		render(template:"tipoMovimiento",model:[todostipomovimientos:tipomov])
	}
	
	def anadirArticulo(){
		int desdeNuevo=Integer.parseInt(request.getParameter("desdeNuevo"))
		if(desdeNuevo==0){
			MovInvDet anade= new MovInvDet()
			anade.articulo=Articulos.get(params.id)
			anade.claveAlmacen=session.idmov
			anade.cantidad=(params.cantidad).toDouble()
			anade.precio=(params.precio).toDouble()
			anade.observaciones=params.observaciones
			//anade.fechaMovimiento=x
			anade.partida=params.partida
			anade.save(flush:true,failOnError:true)
			redirect(controller: "MovimientoInventario", action: "insertarMovimientoInventario")
		}
		else{
			MovInvDetTemp anade= new MovInvDetTemp()
			anade.articulo=Articulos.get(params.id)
			anade.claveAlmacen=session.idMod
			anade.cantidad=(params.cantidad).toDouble()
			anade.precio=(params.precio).toDouble()
			anade.observaciones=params.observaciones
			//anade.fechaMovimiento=x
			anade.partida=params.partida
			anade.save(flush:true,failOnError:true)
			redirect(controller: "MovimientoInventario", action: "modificarMovimientoInventario", params:[modificoArticulo:8])
		}
	}
	
	def eliminarArticulo(){
		def articuloMov
		String desdeModifica=params.desdeModifica
		if(desdeModifica!=null){
			articuloMov = MovInvDetTemp.get(params.id_eliminar)
		}
		else{
			articuloMov = MovInvDet.get(params.id_eliminar)
		}
		if (articuloMov) {
			try {
				articuloMov.delete(flush: true)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
				if(desdeModifica!=null){
					redirect(controller: "MovimientoInventario", action: "modificarMovimientoInventario", params:[modificoArticulo:8])
				}
				else{
					redirect(controller: "MovimientoInventario", action: "insertarMovimientoInventario")
				}
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])}"
				redirect(action: "show", id: params.id)
			}
		}
	}
}
