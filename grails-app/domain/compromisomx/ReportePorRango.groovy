package compromisomx

class ReportePorRango {
	
	Cuenta cuenta; //De aqui se extrae  toda la info del emprendedor
	Rango rango; //De aqui toma el catalogo de rangos
	int mujeres;
	int hombres;
	int tipo; //0 para padre y 1 para hijos;
	int clave_padrino; //quien es el padrino del emprendedor
	int grupos_actuales;

    static constraints = {
    }
}
