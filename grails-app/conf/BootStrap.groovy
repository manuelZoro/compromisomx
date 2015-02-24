import compromisomx.Eslider;
import compromisomx.DetalleEslider;
import compromisomx.Cuenta;
import compromisomx.Pais;
import compromisomx.Estado;
import compromisomx.Ciudad;
import compromisomx.Colonia;
import compromisomx.CodigoPostal;
import compromisomx.RegistroPasatiempos
import compromisomx.RegistroProfesion
import compromisomx.RegistroOtrasActividades
import compromisomx.RegistroOcupacion

class BootStrap {

def init = {
	servletContext ->
	if(DetalleEslider.list().isEmpty()) {
		Eslider eslider = new Eslider(nombre: "Slider Prueba");
		eslider.save(failOnError: true);

		new DetalleEslider(titulo: "Primer slide", descripcion: "Descripcion de Slider CUATRO", url: "0a3e6d7b-c9c8-465a-9495-fc223b99a8b4.jpg", eslider: eslider).save(failOnError: true)
		new DetalleEslider(titulo: "Segundo slide", descripcion: "Descripcion de Slider CINCO", url: "0e208521-7387-4aa6-accc-1a2afc6af2be.jpg", eslider: eslider).save(failOnError: true)
		new DetalleEslider(titulo: "Tercer slide", descripcion: "Descripcion de Slider SEIS", url: "145130ff-38ad-4ff7-98e1-59268aaa5761.jpg", eslider: eslider).save(failOnError: true)
	}

	if(Cuenta.list().isEmpty()){
		Cuenta cuenta = new Cuenta();

		cuenta.nombres = "Harry"
		cuenta.primer_apellido = "Potter"
		cuenta.segundo_apellido = "Perez"
		cuenta.nombre_usuario = "harry85"

		cuenta.nombreCompleto = cuenta.nombres + " " + cuenta.primer_apellido + " " + cuenta.segundo_apellido

		cuenta.save(failOnError:true)

		Cuenta cuenta2 = new Cuenta();

		cuenta2.nombres = "Code"
		cuenta2.primer_apellido = "Ajax"
		cuenta2.segundo_apellido = "Web"
		cuenta2.nombre_usuario = "codeajax35"

		cuenta2.nombreCompleto = cuenta2.nombres + " " + cuenta2.primer_apellido + " " + cuenta2.segundo_apellido

		cuenta2.save(failOnError:true)
	}

	if(Pais.list().isEmpty()){
		Pais pais  = new Pais(nombre: "México")
		if(Estado.list().isEmpty()){
			Estado estado = new Estado(nombre: "Jalisco", pais: pais)
			if(Ciudad.list().isEmpty()){
				Ciudad ciudad = new Ciudad(nombre: "Guadalajara", estado: estado)
				if(CodigoPostal.list().isEmpty()){
					CodigoPostal codigo = new CodigoPostal(codigo: "45160", ciudad: ciudad)
					if(Colonia.list().isEmpty()){
						Colonia colonia = new Colonia(nombre: "Americana", codigopostal: codigo)
						pais.save(failOnError: true)
						estado.save(failOnError: true)
						ciudad.save(failOnError: true)
						codigo.save(failOnError: true)
						colonia.save(failOnError: true)
					}
				}
			}
		}
	}

	if(RegistroPasatiempos.list().isEmpty()){
			new RegistroPasatiempos(pasatiempo: "Jugar Pokémon").save(failOnError: true)
			new RegistroPasatiempos(pasatiempo: "Ver el fútbol").save(failOnError: true)
		}
		if(RegistroProfesion.list().isEmpty()){
			new RegistroProfesion(profesion: "Entrenador Pokémon").save(failOnError: true)
			new RegistroProfesion(profesion: "Licenciado").save(failOnError: true)
		}
		if(RegistroOtrasActividades.list().isEmpty()){
			new RegistroOtrasActividades(actividad: "Lavar ropa").save(failOnError: true)
			new RegistroOtrasActividades(actividad: "Pasear").save(failOnError: true)
		}
		if(RegistroOcupacion.list().isEmpty()){
			new RegistroOcupacion(ocupacion: "Ama de casa").save(failOnError: true)
			new RegistroOcupacion(ocupacion: "Plomero").save(failOnError: true)
		}
}
def destroy = {
}
}
