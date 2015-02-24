package compromisomx

class MovInvDetTemp {

	String idMovimiento
	String claveAlmacen
	String campoLlave
	int partida
	String almacenAfectado
	String centroCosto
	int foliador
	int numFolio
	int tipoMovto
	String entSal
	Date fechaMovimiento
	double precio
	String moneda
	double tipoCambio
	double bonos
	double cantidad
	String unMedida
	double cantidadAdicional1
	String medidaAdicional1
	double cantidadAdicional2
	String medidaAdicional2
	double importePartida
	String lote
	String pedimento
	String observaciones
	String moduloOrigen
	String tipoDocOrigen
	String serieDocOrigen
	int folioDocOrigen
	String codCliente
	String claveProveedor
	Date sFechaCaptura
	double costoPromedio
	double costoUltimo
	double costo3
	String usuario
	int procesar
	int corte
	String consignatario
	int cancelado
	String estatusCaptura
	String claveParvada
	String referencia
	String tieneSubPartidas
	double impuestoPartida
	double impuesto1
	String idSisExt
	int partidaDocOrigen
	String referencia1
	int anulado
	String moduloOrigen1
	String observaciones2
	String serieArt
	String serieArt1
	int movScan
	String subAlm
	String codVehiculo
	String artClase1
	double pesoBruto
	String cveTara
	int cantTara
	double pesoUniTara
	double pesoTara
	String cveArtDest
	int trasTipoDif
	String subAlmDestino
	Articulos articulo
	
    static constraints = {
		
	idMovimiento nullable: true
	claveAlmacen nullable: true
	campoLlave nullable: true
	partida nullable: true
	almacenAfectado nullable: true
	centroCosto nullable: true
	foliador nullable: true
	numFolio nullable: true
	tipoMovto nullable: true
	entSal nullable: true
	fechaMovimiento nullable: true
	precio nullable: true
	moneda nullable: true
	tipoCambio nullable: true
	bonos nullable: true
	cantidad nullable: true
	unMedida nullable: true
	cantidadAdicional1 nullable: true
	medidaAdicional1 nullable: true
	cantidadAdicional2 nullable: true
	medidaAdicional2 nullable: true
	importePartida nullable: true
	lote nullable: true
	pedimento nullable: true
	observaciones nullable: true
	moduloOrigen nullable: true
	tipoDocOrigen nullable: true
	serieDocOrigen nullable: true
	folioDocOrigen nullable: true
	codCliente nullable: true
	claveProveedor nullable: true
	sFechaCaptura nullable: true
	costoPromedio nullable: true
	costoUltimo nullable: true
	costo3 nullable: true
	usuario nullable: true
	procesar nullable: true
	corte nullable: true
	consignatario nullable: true
	cancelado nullable: true
	estatusCaptura nullable: true
	claveParvada nullable: true
	referencia nullable: true
	tieneSubPartidas nullable: true
	impuestoPartida nullable: true
	impuesto1 nullable: true
	idSisExt nullable: true
	partidaDocOrigen nullable: true
	referencia1 nullable: true
	anulado nullable: true
	moduloOrigen1 nullable: true
	observaciones2 nullable: true
	serieArt nullable: true
	serieArt1 nullable: true
	movScan nullable: true
	subAlm nullable: true
	codVehiculo nullable: true
	artClase1 nullable: true
	pesoBruto nullable: true
	cveTara nullable: true
	cantTara nullable: true
	pesoUniTara nullable: true
	pesoTara nullable: true
	cveArtDest nullable: true
	trasTipoDif nullable: true
	subAlmDestino nullable: true
    }
}
