import golosinas.*
object mariano {
		var bolsaDeGolosinas =[]
		method golisinasCompradas(){ return bolsaDeGolosinas}
		method comprar(golosina)= bolsaDeGolosinas.add(golosina)
		method desechar(golosina)= bolsaDeGolosinas.remover(golosina)
		method probarGolosinas() = bolsaDeGolosinas.forEach({elemento=> elemento.mordisco()})
			
}

	