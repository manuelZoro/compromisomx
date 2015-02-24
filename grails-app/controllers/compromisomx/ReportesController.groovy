package compromisomx

class ReportesController {

    def index() { }
	
	def visionGral() { }
	
	def actividadSemanal() { }
	
	def actividadMensual() { }
	
	def actividadAnual() { }

	def autoPago(){
	}
	
	def actividadPeriodo(){
	}
	
	def colabSocial() { }
	
	def orgvisiongral() { 
	
		//aqui se debe pasar el id del seleccionado para cargar su info
		def repVisGral = ReporteVisionGeneral.list()
		[vistarepVisGral:repVisGral]
	
	}
	
	def orgemprendedores() {
		
			//aqui se debe pasar el id del seleccionado para cargar su info
			def repemprendedores = ReporteEmprendedores.list()
			def reportepadre = ReporteEmprendedores.findByTipo(0);
			def reportehijos = ReporteEmprendedores.findAllByTipo(1);
			[vistarepemprendedores:repemprendedores,reportepadre_v:reportepadre,reportehijos_v:reportehijos]		
		}
	
	def orgrangos() {
		
			//aqui se debe pasar el id del seleccionado para cargar su info
			
			def listadorangos = Rango.list();
			def reprango = ReportePorRango.findAllByClave_padrino(1412);
			[vistareprango:reprango,listadorangos_v:listadorangos/*,reportepadre_v:reportepadre,reportehijos_v:reportehijos*/]
		}
	
	def orgproductividad() {
		
			//aqui se debe pasar el id del seleccionado para cargar su info
			
			def productividad  = ReporteProductividad.findAllByClave_padrino(21);
			[vistaproductividad:productividad]
		}
	
	}
