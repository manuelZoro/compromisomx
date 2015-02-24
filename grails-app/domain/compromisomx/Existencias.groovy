package compromisomx


class Existencias {
	
	String claveAlmacen
	String claveArticulo
	double existencia
	double apartadoTemporal
	String ubicacion
	double exMaxima
	double exMinima
	double exReorden
	double exAdicional1
	double exAdicional2
	double exFija
	double pedidoPorSurtir
	double ordenPorRecibir
	double costoPromedio
	double costoUltimo
	Date fechaUltInvFis
	double impCosProm
	int usarLotes

    static constraints = {	
		claveAlmacen nullable: true
		claveArticulo nullable: true
		existencia nullable: true
		apartadoTemporal nullable: true
		ubicacion nullable: true
		exMaxima nullable: true
		exMinima nullable: true
		exReorden nullable: true
		exAdicional1 nullable: true
		exAdicional2 nullable: true
		exFija nullable: true
		pedidoPorSurtir nullable: true
		ordenPorRecibir nullable: true
		costoPromedio nullable: true
		costoUltimo nullable: true
		fechaUltInvFis nullable: true
		impCosProm nullable: true
		usarLotes nullable: true
    }
}
