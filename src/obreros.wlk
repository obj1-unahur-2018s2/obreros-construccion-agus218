import obra.*
import uocra.*

class Obrero{
	var property licencia = false
	var property diasAdeudados = 0
	var property obreros = true
	
//	method sumarDiaTrabajado() { diasAdeudados += 1}
    method iniciarLicencia() { licencia = true }
    method finalizarLicencia() { licencia = false }
    method estaDeLicencia() { return licencia }
    method sueldoPendiente() { return diasAdeudados*self.sueldoPorJornal()}
    method sueldoPorJornal()
    method cobrarSueldo() { diasAdeudados = 0 }

	method consu(obra)
	
}

class Albanil inherits Obrero {
	
	override method consu(obra) { obra.restarLadrillos(100) }
	override method sueldoPorJornal() { return uocra.jornalAlbanil() }

}

class Gasista inherits Obrero {
	
	override method consu(obra) { 
		obra.restarCano(3)
		obra.restarFosforos(20) 
		}
		override method sueldoPorJornal() { return uocra.jornalGasista() }
		
}

class Plomero inherits Obrero {
	
	override method consu(obra) { 
		obra.restarCano(10) 
		obra.restarArandelas(30)
		}
		override method sueldoPorJornal() { return uocra.jornalPlomero() }

}

class Electricista inherits Obrero {
	override method consu(obra) {
		obra.restarCable(4)
		obra.restarCinta(1)
	}
	override method sueldoPorJornal() { return uocra.jornalElectricista() }
}
