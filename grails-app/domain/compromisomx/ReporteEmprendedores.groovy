package compromisomx

class ReporteEmprendedores {
	
	Cuenta cuenta; //De aqui se extrae  toda la info del emprendedor
	int tamano_org; //tamaño de su organizacion  
	int mujeres;
	int hombres;
	int activos;
	int inactivos;
	int suspendidos;
	int tipo; //0 para padre y 1 para hijos;
	int clave_padrino; //quien es el padrino del emprendedor
	
	
    static constraints = {
    }
}
