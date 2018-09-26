import golosinas.*
object mariano {
		var bolsaDeGolosinas =[]
		
		method golosinasCompradas(){ return bolsaDeGolosinas}
		
		method comprar(golosina)= bolsaDeGolosinas.add(golosina)
		
		method desechar(golosina)= bolsaDeGolosinas.remove(golosina)
		
		method probarGolosinas() = bolsaDeGolosinas.forEach({elemento=> elemento.mordisco()})
		
		method hayGolosinaSinTACC()=  bolsaDeGolosinas.any{elemento => elemento.libreGluten()}
		
		method pesoGolosinas() = bolsaDeGolosinas.sum({golosina => golosina.peso()})
		
		// TODO Debería ser <= 10	
		method preciosCuidados()= bolsaDeGolosinas.all{elemento => elemento.precio()>= 10}
		
		method golosinaDeSabor(unSabor)= bolsaDeGolosinas.find{elemento => elemento.gusto()== unSabor}
		
		method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter{elemento => elemento.gusto() == unSabor }
		
		// TODO Debería eliminar repetidos.
		method sabores()= bolsaDeGolosinas.map {golosina => golosina.gusto()}
		
		method golosinaMasCara()= return bolsaDeGolosinas.max{elemento => elemento.precio()}
		
		method golosinasFaltantes(golosinasDeseadas)=golosinasDeseadas.asSet().difference(bolsaDeGolosinas.asSet())
	
		// TODO Es un error usar union, no hace lo que se necesita para este método.
		method saboresFaltantes(sabores){return sabores.union(self.sabores())}
	}

	