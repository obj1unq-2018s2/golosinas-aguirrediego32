import golosinas.*
object mariano {
		var bolsaDeGolosinas =[]
		
		method golosinasCompradas(){ return bolsaDeGolosinas}
		
		method comprar(golosina)= bolsaDeGolosinas.add(golosina)
		
		method desechar(golosina)= bolsaDeGolosinas.remover(golosina)
		
		method probarGolosinas() = bolsaDeGolosinas.forEach({elemento=> elemento.mordisco()})
		
		method hayGolosinaSinTACC()=  bolsaDeGolosinas.any{elemento => elemento.libreGluten()}
		
		method pesoGolosinas() = bolsaDeGolosinas.sum({golosina => golosina.peso()})
		
		method preciosCuidados()= bolsaDeGolosinas.all{elemento => elemento>= 10}
		
		method golosinaDeSabor(unSabor)= bolsaDeGolosinas.find{elemento => elemento.gusto()== unSabor}
		
		method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter{elemento => elemento.gusto() == unSabor}
		
		method sabores()= bolsaDeGolosinas.map {golosina => golosina.gusto()}
		
		method golosinaMasCara()= bolsaDeGolosinas.max{elemento => elemento.precio()}
		
		method golosinasFaltantes(golosinasDeseadas)=golosinasDeseadas.asSet().difference(bolsaDeGolosinas.asSet())
		
		method saboresFaltantes(sabores){return sabores.union(self.sabores())}
}

	