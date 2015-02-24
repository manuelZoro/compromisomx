package compromisomx

class Festejados_mesController {

    def index() {
		def info_P=InformacionPersonal.all;
		def today = new Date();
		int mes = today.calendarDate.month;
		int dia = today.calendarDate.dayOfMonth;
		[infoPersonal:info_P,mesInt:mes,diaInt:dia]	
	}
	
	
}
