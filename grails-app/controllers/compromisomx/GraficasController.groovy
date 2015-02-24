package compromisomx

class GraficasController {

    def index() { }
	
	//REPORTE GRAFICO DE VISION GENERAL
	def vision_general(){
		
		Cuenta raiz = Cuenta.get(1394);
		
		println("Cuenta 1394: " + raiz.genero);
		RepoGrafica obj_g = new RepoGrafica();
		String html_code = obj_g.codigo_html(raiz);
		
		System.out.println(html_code);
		
		//def primer_nivel = Cuenta.findAllByMentor(raiz);
		//def segundo_nivel = Cuenta.findAllByMentor(primer_nivel);
		//def tercer_nivel = Cuenta.findAllByMentor(tercer_nivel);
		//def cuarto_nivel = Cuenta.findAllByMentor(tercer_nivel);
		//def quinto_nivel = Cuenta.findAllByMentor(cuarto_nivel);
	
		[html_cod:html_code];
		
	}
	
	//REPORTE GRAFICO DE PROYECCION
	def proyeccion(){
		
		
	}
	
	//REPORTE GRAFICO EMPRENDEDORES
	def emprendedores(){
		
	}
	
	//REPORTE GRAFICO FESTEJADOS DEL MES
	def festejados_mes(){
		
	}
	
	//REPORTE GRAFICO EMPRENDEDORES POR RANGO
	def emprendedores_rango(){
	
    }
	
	//REPORTE GRAFICO PRODUCTIVIDAD
	def productividad(){
		
	}
	
	
}
