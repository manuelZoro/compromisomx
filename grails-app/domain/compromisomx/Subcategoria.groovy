package compromisomx

class Subcategoria {
	String nom_subcategoria
	int categoria_id

	static constraints = {
		nom_subcategoria blank:false  
		categoria_id blank:false
    }
 
}