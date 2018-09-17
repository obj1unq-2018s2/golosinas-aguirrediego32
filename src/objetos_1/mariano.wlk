import golosinas.*
object mariano {
		var bolsaDeGolosinas =[]
		method golisinasCompradas(){ return bolsaDeGolosinas}
		method comprar(golosina)= bolsaDeGolosinas.add(golosina)
		method desechar(golosina)= bolsaDeGolosinas.remover(golosina)
		method probarGolosinas() = bolsaDeGolosinas.forEach({elemento=> elemento.mordisco()})
		method hayGolosinaSinTACC()=  bolsaDeGolosinas.any{elemento => elemento.libreGluten()}
		method preciosCuidados()= bolsaDeGolosinas.all{elemento => elemento>= 10}
		method golosinaDeSabor(unSabor)= bolsaDeGolosinas.find{elemento => elemento.gusto()== unSabor}
		method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter{elemento => elemento.gusto() == unSabor}
		method sabores()={}
		method golosinaMasCara()= bolsaDeGolosinas.max{elemento => elemento.precio()}
		method golosinasFaltantes(golosinasDeseadas)=golosinasDeseadas.difference(bolsaDeGolosinas)
		method saboresFaltantes(sabores){return sabores.union(self.sabores())}
}

	