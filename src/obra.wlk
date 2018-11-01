
class Obra {
	var obreros = []
	 
	var property ladrillos = 0
	var property cano = 0
	var property fosforos = 0
	var property arandelas = 0
	var property cable = 0
	var property pared = 0
	var property canoGas = 0
	var property canoAgua = 0
	var property cinta = 0
	
	var property presupuesto = 0
	
	
	method agregarObreros(obrero) { obreros.add(obrero) }
	method quitarObreros(obrero) { 
		if (obrero.estaDeLicencia()) {
			self.error( "Las leyes laborales están para respetarse - licencia implica estabilidad laboral")
		}
		
		obreros.remove(obrero)
	}
	method obrerosDisponibles() { return obreros.filter 
		({obrero => not obrero.licencia()})
	}
	method registrarJornadaLaboral() { 
		if (self.obrerosDisponibles().isEmpty()) {
			self.error("No hay obreros disponibles para trabajar")
		}
		self.obrerosDisponibles().forEach({ obrero => obrero.consu(self) })
	}
	
    method restarLadrillos(lad) { ladrillos = ladrillos - lad }
	method restarCano(canio) { cano = cano - canio}
	method restarFosforos(fos) { fosforos = fosforos -fos }
	method restarArandelas(ara) { arandelas = arandelas - ara }
	method restarCable(cab) { cable = cable -cab }
	method restarCinta(cin) { cinta = cinta -cin }
	
//	method paredLevantada(cantidadDeLadrillos)
//	method instalacionDeAgua(metrosDeCanos)
//	method instalacionElectrica(metrosDeCable)
//	method instalacionDeGas(metrosDeCano)
}
