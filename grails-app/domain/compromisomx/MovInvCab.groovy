package compromisomx

class MovInvCab {

	String idMovimiento
	String claveAlmacen
	String campoLlave
	int foliador
	int numFolio
	String entSal
	String almacenAfectado
	Date fechaMovimiento
	int traspaso
	String almacenDestino
	String idMovimientoDestino
	int tipoMovtoDest
	int foliadorDestino
	int numFolioDest
	String centroCosto
	String moduloOrigen
	String tipoDocOrigen
	String serieDocOrigen
	int folioDocOrigen
	String observaciones
	double montoDocumento
	int corte
	Date sFechaCaptura
	String usuario
	int procesar
	String consignatario
	double cantArtic
	String observaciones1
	int cancelado
	String estatusCaptura
	String claveParvada
	String referencia
	int partidaDocOrigen
	String idDocumentoPOL
	int anulado
	int movScan
	double pesoBruto
	double pesoTara
	double cantAdd1
	double cantAdd2
	String codVehiculo
	String codVehRemol1
	String codVehRemol2
	String codRepartidor
	String idDocRepar
	String cveEmpDest
	int trasEmp
	String codRepartidor1
	String codRepartidor2
	String almEmpDest
	String bDEmpDest
	String idMovEmpDest
	int genMovDest
	int traConfRec
	double pesoOri
	double pesoRec
	double pesoDif
	double pesoDifPorc
	double cantMort
	double pesoMort
	double porcMort
	double cantFalt
	double pesoFalt
	double porcFalt
	int traPolViv
	String idDocFacMer
	double cantRec
	double pesoRecViv
	int traHvo
	String usuarioAnula
	Date fechaAnulacion
	String idMovImp
	String codCliente
	String codAgente
	Date fecVenApartado
	TipoMovInv tipoMovto
	
    static constraints = {
		idMovimiento nullable: true
		claveAlmacen nullable: true
		campoLlave nullable: true
		foliador nullable: true
		numFolio nullable: true
		entSal nullable: true
		almacenAfectado nullable: true
		fechaMovimiento nullable: true
		traspaso nullable: true
		almacenDestino nullable: true
		idMovimientoDestino nullable: true
		tipoMovtoDest nullable: true
		foliadorDestino nullable: true
		numFolioDest nullable: true
		centroCosto nullable: true
		moduloOrigen nullable: true
		tipoDocOrigen nullable: true
		serieDocOrigen nullable: true
		folioDocOrigen nullable: true
		observaciones nullable: true
		montoDocumento nullable: true
		corte nullable: true
		sFechaCaptura nullable: true
		usuario nullable: true
		procesar nullable: true
		consignatario nullable: true
		cantArtic nullable: true
		observaciones1 nullable: true
		cancelado nullable: true
		estatusCaptura nullable: true
		claveParvada nullable: true
		referencia nullable: true
		partidaDocOrigen nullable: true
		idDocumentoPOL nullable: true
		anulado nullable: true
		movScan nullable: true
		pesoBruto nullable: true
		pesoTara nullable: true
		cantAdd1 nullable: true
		cantAdd2 nullable: true
		codVehiculo nullable: true
		codVehRemol1 nullable: true
		codVehRemol2 nullable: true
		codRepartidor nullable: true
		idDocRepar nullable: true
		cveEmpDest nullable: true
		trasEmp nullable: true
		codRepartidor1 nullable: true
		codRepartidor2 nullable: true
		almEmpDest nullable: true
		bDEmpDest nullable: true
		idMovEmpDest nullable: true
		genMovDest nullable: true
		traConfRec nullable: true
		pesoOri nullable: true
		pesoRec nullable: true
		pesoDif nullable: true
		pesoDifPorc nullable: true
		cantMort nullable: true
		pesoMort nullable: true
		porcMort nullable: true
		cantFalt nullable: true
		pesoFalt nullable: true
		porcFalt nullable: true
		traPolViv nullable: true
		idDocFacMer nullable: true
		cantRec nullable: true
		pesoRecViv nullable: true
		traHvo nullable: true
		usuarioAnula nullable: true
		fechaAnulacion nullable: true
		idMovImp nullable: true
		codCliente nullable: true
		codAgente nullable: true
		fecVenApartado nullable: true
    }
}
