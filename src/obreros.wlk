import obra.*

class Obrero{
	var property obreros = true
	
	method consu(obra)
}

class Albanil inherits Obrero {
	
	override method consu(obra) { obra.restarLadrillos(100) }

}

class Gasista inherits Obrero {
	
	override method consu(obra) { 
		obra.restarCano(3)
		obra.restarFosforos(20) 
	}
}

class Plomero inherits Obrero {
	
	override method consu(obra) { 
		obra.restarCano(10) 
		obra.restarArandelas(30)
		}

}

class Electricista inherits Obrero {
	override method consu(obra) {
		obra.restarCable(4)
		obra.restarCinta(1)
	}
}
