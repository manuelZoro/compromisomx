package compromisomx

class RepoGrafica {

    static constraints = {
    }
	
	public String codigo_html(Cuenta datos){
		String html= "";
		html= html + '<ul>';
		html= html + '	<li>';
	    html= html + '    <img src="http://localhost:8080/compromisomx/images/organizacion/VisionGral/hombre_m1.png">';
		
		html = html + this.nivel_uno(datos);
		
		
		
		html= html + '  </li>';
		html= html + '</ul>';
		return html;
	
	}
	
	public String nivel_uno(Cuenta raiz){
		String html = "";
		def primer_nivel = Cuenta.findAllByMentor(raiz);
		
		if(primer_nivel.size() > 0){
			html = html + '<ul>';
			for(elemento in primer_nivel){
				
				html = html + '<li>';
				html = html + '	<img src="http://localhost:8080/compromisomx/images/organizacion/VisionGral/hombre_m2.png" class="popover-markup-dts">';
				html = html + '	<div class="head hide" >Juan Perez Montellano</div>';
				html = html + '		<div class="content hide">';
				html = html + '		<i class="glyphicon glyphicon-earphone icono_infox"></i>';
				html = html + '		<i class="glyphicon glyphicon-envelope icono_infox"></i>';
				html = html + '		<i class="fa fa-facebook fa-fw icono_infox"></i>';
				html = html + '		<i class="fa fa-twitter fa-fw icono_infox"></i>';
				html = html + '		<i class="glyphicon glyphicon-facetime-video icono_infox"></i>';
				html = html + '		<i class="fa fa-skype fa-fw icono_infox"></i>';
				html = html + '	</div>';
				
				html = html + this.segundo_nivel(elemento);
				
			}
			html = html + '</ul>';
			
		}
		
		return html;
		
	}
	
	public String segundo_nivel(Cuenta primero){
		String html ="";
		def segundo_nivel = Cuenta.findAllByMentor(primero);
		
		if(segundo_nivel.size() > 0){
			html = html + '<ul>';
			for(elemento in segundo_nivel){
				
				html = html + '<li>';
				html = html + '	<img src="http://localhost:8080/compromisomx/images/organizacion/VisionGral/hombre_m2.png" class="popover-markup-dts">';
				html = html + '	<div class="head hide" >Juan Perez Montellano</div>';
				html = html + '		<div class="content hide">';
				html = html + '		<i class="glyphicon glyphicon-earphone icono_infox"></i>';
				html = html + '		<i class="glyphicon glyphicon-envelope icono_infox"></i>';
				html = html + '		<i class="fa fa-facebook fa-fw icono_infox"></i>';
				html = html + '		<i class="fa fa-twitter fa-fw icono_infox"></i>';
				html = html + '		<i class="glyphicon glyphicon-facetime-video icono_infox"></i>';
				html = html + '		<i class="fa fa-skype fa-fw icono_infox"></i>';
				html = html + '	</div>';
				
				html = html + this.tercer_nivel(elemento);
			}
			html = html + '</ul>';
		}
		
		return html;
	}
	
	
	public String tercer_nivel(Cuenta segundo){
		String html ="";
		def tercer_nivel = Cuenta.findAllByMentor(segundo);
		
		if(tercer_nivel.size() > 0){
			html = html + '<ul>';
			for(elemento in tercer_nivel){
				
				html = html + '<li>';
				html = html + '	<img src="http://localhost:8080/compromisomx/images/organizacion/VisionGral/hombre_m2.png" class="popover-markup-dts">';
				html = html + '	<div class="head hide" >Juan Perez Montellano</div>';
				html = html + '		<div class="content hide">';
				html = html + '		<i class="glyphicon glyphicon-earphone icono_infox"></i>';
				html = html + '		<i class="glyphicon glyphicon-envelope icono_infox"></i>';
				html = html + '		<i class="fa fa-facebook fa-fw icono_infox"></i>';
				html = html + '		<i class="fa fa-twitter fa-fw icono_infox"></i>';
				html = html + '		<i class="glyphicon glyphicon-facetime-video icono_infox"></i>';
				html = html + '		<i class="fa fa-skype fa-fw icono_infox"></i>';
				html = html + '	</div>';
				
				html = html + this.cuarto_nivel(elemento);
			}
			html = html + '</ul>';
		}
		
		return html;
	}
	
	
	public String cuarto_nivel(Cuenta tercer){
		String html ="";
		def cuarto_nivel = Cuenta.findAllByMentor(tercer);
		
		if(cuarto_nivel.size() > 0){
			for(elemento in cuarto_nivel){
				
				html = html + this.quinto_nivel(elemento);
			}
		}
		
		return html;
	}
	
	
	public String quinto_nivel(Cuenta cuarto){
		String html ="";
		def quinto_nivel = Cuenta.findAllByMentor(cuarto);
		
		if(quinto_nivel.size() > 0){
			for(elemento in quinto_nivel){
				
			
			}
		}
		
		return html;
	}
	
	
	
}
