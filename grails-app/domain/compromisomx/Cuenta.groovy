package compromisomx

class Cuenta {

	String curp;
	String nombres;
	String primer_apellido;
	String segundo_apellido;
	String nombreCompleto;
	Date fecha_de_nacimiento;
	String idioma;
	Boolean genero; //true Femenino, false Masculino
	CodigoPostal codigo_postal;
	Colonia colonia;
	String calle;
	String numero_exterior;
	String numero_interior;
	String manzana;
	String cruzamientos;
	String referencias;
	String telefono_casa;
	String otro_telefono;
	String telefono_movil;
	String codigo_verificacion1; //NO SE DEBE GUARDAR
	String correo_electronico;
	String codigo_verificacion2; //NO SE DEBE GUARDAR
	String nombre_usuario;
	String password;
	Ciudad ciudad;
	String rfc;
	Long idrango;
	Cuenta mentor;
	Pais pais;
	Estado estado;
	String coaplicantenombre;
	String coaplicanteprimerapellido;
	String coaplicantesegundoapellido;

	String coaplicanteCurp
	Date coaplicanteFechaNacimiento
	Boolean coaplicanteGenero; //true Femenino, false Masculino //DEBE SER ENUM

	Boolean aceptaAcuerdo;
	String firmaDigital;

	String nombre_expuesto;
	Date fechaInscripcion;
	String imagen_perfil;
	Boolean tipo; //true es para Colaborador Social (CS) y false para Emprendedor Social Independiente (ESI)
	//RegistroProfesion profesion;
	//RegistroPasatiempos pasatiempo;
	//RegistroOcupacion ocupacion;
	Integer paquete;
	/*Este campo "paquete" es temporal, y sólo sirve para fines del registro. En produción
	 * debería toamr un paquete real, con costo real, definido por los administradores.
	 * Este campo ni siquiera debe estar aquí. Deberá estar en una tabla de Venta, relacionado con la cuenta.
	 */
	
	static mapping = {
		mentor lazy: false //Esto sirve para que no haya problema con el session de Hibernate
	}

	static constraints = {
		curp nullable: true;
		nombres nullable: true;
		primer_apellido nullable: true;
		segundo_apellido nullable: true;
		nombreCompleto nullable: true;
		fecha_de_nacimiento nullable: true;
		idioma nullable: true;
		genero nullable: true;
		codigo_postal nullable: true;
		colonia nullable: true;
		calle nullable: true;
		numero_exterior nullable: true;
		numero_interior nullable: true;
		manzana nullable: true;
		cruzamientos nullable: true;
		referencias nullable: true;
		telefono_casa nullable: true;
		otro_telefono nullable: true;
		telefono_movil nullable: true;
		codigo_verificacion1 nullable: true;
		correo_electronico nullable: true;
		codigo_verificacion2 nullable: true;
		nombre_usuario nullable: true, unique: true;
		password nullable: true;
		ciudad nullable: true;
		rfc nullable: true;
		idrango nullable: true;
		mentor nullable: true;
		pais nullable: true;
		estado nullable: true;
		coaplicantenombre nullable: true;
		coaplicanteprimerapellido nullable: true;
		coaplicantesegundoapellido nullable: true;
		nombre_expuesto nullable: true;
		fechaInscripcion nullable: true;
		imagen_perfil nullable: true;
		tipo nullable: true;
		//profesion nullable: true;
		//pasatiempo nullable: true;
		//ocupacion nullable: true;
		aceptaAcuerdo nullable: true;
		firmaDigital nullable: true;
		paquete  nullable: true;

		coaplicanteCurp nullable: true;
		coaplicanteFechaNacimiento nullable: true;
		coaplicanteGenero nullable: true; //true Femenino, false Masculino //DEBE SER ENUM
	}

}