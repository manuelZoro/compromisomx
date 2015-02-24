package compromisomx

class Almacenes {
	
	String claveAlmacen
	String descripcion
	String descripCorta
	String idUbic
	int esAlmacenConsignacion
	String estatus
	int puedeVender
	int puedeComprar
	String centroCosto
	String cveSisExt
	String codCuenta1
	String direccion
	String colonia
	String codigoPostal
	String localidad
	String municipio
	String estado
	String pais
	String telefono
	String encargado
	String observaciones
	int manExiNeg
	String codCliente
	String grupoAlm
	int manSubAlm
	String cveEmpresa
	String almPerSur
	String cuentaContableVentas
	int trasEmp
	String cveEmpDest
	String almEmpDest
	int esAlmVtaRuta
	String codLocal
	String codEstado
	String codMunicipio
	String codPais
	String ctaConBonifVtas
	String codListaPrecio
	int numPolBase
	double porcMerTraPolViv
	String ctaConAlmTransito
	double porcMerTra2
	String clase1
	String clase2
	String clase3
	String ctaConBancos
	String ctaConClientes
	String ctaConCostoVta
	String ctaConCanCenCosto
	String numExterior
	String numInterior
	int cFDManCert
	int cFDManDomFis
	int manAutModPreVta
	String codSucSisExt
	int esAlmApartado
	String pregPagoFactura
	String manCFDi

    static constraints = {
	
	claveAlmacen nullable: true
	descripcion nullable: true
	descripCorta nullable: true
	idUbic nullable: true
	esAlmacenConsignacion nullable: true
	estatus nullable: true
	puedeVender nullable: true
	puedeComprar nullable: true
	centroCosto nullable: true
	cveSisExt nullable: true
	codCuenta1 nullable: true
	direccion nullable: true
	colonia nullable: true
	codigoPostal nullable: true
	localidad nullable: true
	municipio nullable: true
	estado nullable: true
	pais nullable: true
	telefono nullable: true
	encargado nullable: true
	observaciones nullable: true
	manExiNeg nullable: true
	codCliente nullable: true
	grupoAlm nullable: true
	manSubAlm nullable: true
	cveEmpresa nullable: true
	almPerSur nullable: true
	cuentaContableVentas nullable: true
	trasEmp nullable: true
	cveEmpDest nullable: true
	almEmpDest nullable: true
	esAlmVtaRuta nullable: true
	codLocal nullable: true
	codEstado nullable: true
	codMunicipio nullable: true
	codPais nullable: true
	ctaConBonifVtas nullable: true
	codListaPrecio nullable: true
	numPolBase nullable: true
	porcMerTraPolViv nullable: true
	ctaConAlmTransito nullable: true
	porcMerTra2 nullable: true
	clase1 nullable: true
	clase2 nullable: true
	clase3 nullable: true
	ctaConBancos nullable: true
	ctaConClientes nullable: true
	ctaConCostoVta nullable: true
	ctaConCanCenCosto nullable: true
	numExterior nullable: true
	numInterior nullable: true
	cFDManCert nullable: true
	cFDManDomFis nullable: true
	manAutModPreVta nullable: true
	codSucSisExt nullable: true
	esAlmApartado nullable: true
	pregPagoFactura nullable: true
	manCFDi nullable: true
    }
}
