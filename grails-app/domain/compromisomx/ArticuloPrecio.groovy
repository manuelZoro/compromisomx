package compromisomx


class ArticuloPrecio {
	
	String listaPrecio
	String claveArticulo
	double precio
	double descuento
	double dectoMax1
	double dectoMax2
	String moneda
	double bonos
	double precioDls

    static constraints = {
		listaPrecio nullable: true
		claveArticulo nullable: true
		precio nullable: true
		descuento nullable: true
		dectoMax1 nullable: true
		dectoMax2 nullable: true
		moneda nullable: true
		bonos nullable: true
		precioDls nullable: true
		
    }
}
