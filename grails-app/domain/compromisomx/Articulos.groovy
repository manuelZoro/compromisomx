package compromisomx

class Articulos {

	String claveArticulo
	String descripcion
	String descripcionAdicional
	String nombreComercial
	String nombreGenerico
	String observ2
	String observ1
	String alterno
	String linea
	String marca
	String clase1
	String clase2
	String clase3
	String clase4
	String clase5
	String estatus
	int imprimeLista
	int muestraEnVentas
	int muestraEnCompras
	int muestraEnConsumos
	int muestraEnProduccion
	int muestraEnMovInv
	int inventariable
	int ensamble
	int usarLotes
	int usarSeries
	int modDesc
	int pregCosto
	int generaOrden
	double anticipo
	String impuesto1
	String impuesto2
	String impuesto3
	String unMedidaBase
	String claveFacUtil
	String medidaAdicional1
	double equivalencia1
	String medidaAdicional2
	double equivalencia2
	String cuentaContableVentas
	String cuentaContableCompras
	String cuentaContableConsumos
	String archiFoto
	String monedaCompra
	String monedaVenta
	int afectaExistenciaGranjas
	int afectaIngresosGranjas
	int ingreAutoForPlantaAlimento
	double mermaProcesoPlantaAlimento
	int pideDatosSalidaGranja
	String almConsumoPlantaAli
	double pesoMinimo
	double pesoMaximo
	int esPolloEntero
	String claveArtGranel
	String claveArtCongelado
	String conceptoCosto
	int muestraEnFlotillas
	int muestraEnGanado
	int esArtCongelado
	int esArtGranel
	Date fechaUltCompra
	String provUltCompra
	int cveEnvase
	String nomProvUltCompra
	int cveEnvaseAdd
	String area
	String cveSisExt
	int artDisponibleVta
	String cveCieCos
	int esMicroPlantaAli
	double stockMinimo
	double stockMaximo
	double mermaStd
	int pregCenCos
	String ctaConDevVtas
	String ctaConBonifVtas
	String ctaConDevCompras
	String ctaConBonifCompras
	int manExiNeg
	String claveFormula
	String ctaConComprasOrd1
	String ctaConComprasOrd2
	double porcRetIva
	double porcRetIsr
	int pideImptoAdd
	int servicio
	String cveContEspCompra
	String cveContEspVenta
	String ctaConRetIva
	String ctaConRetIsr
	String cveContEspConsumo
	String cveContEspDevCompra
	int noContabilizaConsumos
	int envManNumSer
	String cveContEspVentaCar
	int esArtRasCodBar
	String cveInvFisico
	int esArtEnvase
	String provPreferido
	String subAlmConsumoPlaAli
	String askVehConsume
	Date fecAlta
	int esArtHvoVta
	int cantPreg3UniEmp
	String aplicaIETU
	int manParCosExe
	double impParExe
	double porcRetAdd
	String ctaConRetAdd
	String ctaConRetIvaPag
	String ctaConRetIsrPag
	String ctaConRetAddPag
	int almDefManLote
	double kCal
	double proteina
	String ctaConCostoVta
	String cveContEspCostoVta
	String ctaConProd
	String cveContEspProd
	int actCosPromGpo
	String ctaConOrdPagar
	String cveConBonifVtas
	String activoFijo
	String genDepreciacion
	String cveDepto
	int artPromocion
	String impuestoIEPS
	
    static constraints = {
		claveArticulo  nullable: true
		descripcion nullable: true
		descripcionAdicional nullable: true
		nombreComercial nullable: true
		nombreGenerico nullable: true
		observ2 nullable: true
		observ1 nullable: true
		alterno nullable: true
		linea nullable: true
		marca nullable: true
		clase1 nullable: true
		clase2 nullable: true
		clase3 nullable: true
		clase4 nullable: true
		clase5 nullable: true
		estatus nullable: true
		imprimeLista nullable: true
		muestraEnVentas nullable: true
		muestraEnCompras nullable: true
		muestraEnConsumos nullable: true
		muestraEnProduccion nullable: true
		muestraEnMovInv nullable: true
		inventariable nullable: true
		ensamble nullable: true
		usarLotes nullable: true
		usarSeries nullable: true
		modDesc nullable: true
		pregCosto nullable: true
		generaOrden nullable: true
		anticipo nullable: true
		impuesto1 nullable: true
		impuesto2 nullable: true
		impuesto3 nullable: true
		unMedidaBase nullable: true
		claveFacUtil nullable: true
		medidaAdicional1 nullable: true
		equivalencia1 nullable: true
		medidaAdicional2 nullable: true
		equivalencia2 nullable: true
		cuentaContableVentas nullable: true
		cuentaContableCompras nullable: true
		cuentaContableConsumos nullable: true
		archiFoto nullable: true
		monedaCompra nullable: true
		monedaVenta nullable: true
		afectaExistenciaGranjas nullable: true
		afectaIngresosGranjas nullable: true
		ingreAutoForPlantaAlimento nullable: true
		mermaProcesoPlantaAlimento nullable: true
		pideDatosSalidaGranja nullable: true
		almConsumoPlantaAli nullable: true
		pesoMinimo nullable: true
		pesoMaximo nullable: true
		esPolloEntero nullable: true
		claveArtGranel nullable: true
		claveArtCongelado nullable: true
		conceptoCosto nullable: true
		muestraEnFlotillas nullable: true
		muestraEnGanado nullable: true
		esArtCongelado nullable: true
		esArtGranel nullable: true
		fechaUltCompra nullable: true
		provUltCompra nullable: true
		cveEnvase nullable: true
		nomProvUltCompra nullable: true
		cveEnvaseAdd nullable: true
		area nullable: true
		cveSisExt nullable: true
		artDisponibleVta nullable: true
		cveCieCos nullable: true
		esMicroPlantaAli nullable: true
		stockMinimo nullable: true
		stockMaximo nullable: true
		mermaStd nullable: true
		pregCenCos nullable: true
		ctaConDevVtas nullable: true
		ctaConBonifVtas nullable: true
		ctaConDevCompras nullable: true
		ctaConBonifCompras nullable: true
		manExiNeg nullable: true
		claveFormula nullable: true
		ctaConComprasOrd1 nullable: true
		ctaConComprasOrd2 nullable: true
		porcRetIva nullable: true
		porcRetIsr nullable: true
		pideImptoAdd nullable: true
		servicio nullable: true
		cveContEspCompra nullable: true
		cveContEspVenta nullable: true
		ctaConRetIva nullable: true
		ctaConRetIsr nullable: true
		cveContEspConsumo nullable: true
		cveContEspDevCompra nullable: true
		noContabilizaConsumos nullable: true
		envManNumSer nullable: true
		cveContEspVentaCar nullable: true
		esArtRasCodBar nullable: true
		cveInvFisico nullable: true
		esArtEnvase nullable: true
		provPreferido nullable: true
		subAlmConsumoPlaAli nullable: true
		askVehConsume nullable: true
		fecAlta nullable: true
		esArtHvoVta nullable: true
		cantPreg3UniEmp nullable: true
		aplicaIETU nullable: true
		manParCosExe nullable: true
		impParExe nullable: true
		porcRetAdd nullable: true
		ctaConRetAdd nullable: true
		ctaConRetIvaPag nullable: true
		ctaConRetIsrPag nullable: true
		ctaConRetAddPag nullable: true
		almDefManLote nullable: true
		kCal nullable: true
		proteina nullable: true
		ctaConCostoVta nullable: true
		cveContEspCostoVta nullable: true
		ctaConProd nullable: true
		cveContEspProd nullable: true
		actCosPromGpo nullable: true
		ctaConOrdPagar nullable: true
		cveConBonifVtas nullable: true
		activoFijo nullable: true
		genDepreciacion nullable: true
		cveDepto nullable: true
		artPromocion nullable: true
		impuestoIEPS nullable: true
    }
}
