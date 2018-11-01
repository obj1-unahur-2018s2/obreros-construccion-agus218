import obra.*
import obreros.*

class Casas inherits Obra {
	var property cantidadHabitaciones
	var property banos = 0
	
	method habitacion() {}
}

class Edificios inherits Obra {
	var property habitacionesPorDep
	var property depPorPiso
	var property piso
	
	method cantidadHabitaciones() {
		return habitacionesPorDep * depPorPiso * piso
	}
	
}