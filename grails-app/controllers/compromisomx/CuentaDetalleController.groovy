package compromisomx

class CuentaDetalleController {

    def index = {
		def TodasCuentasDetalle = CuentaDetalle.all
		[TodasCuentasDetalle:TodasCuentasDetalle]
	}
}
