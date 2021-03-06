object bombon {
	var  peso = 15
	method precio() { return 5 }
	method peso() { return peso }
	
	// TODO La lógica en este método no evita que el peso pueda ser negativo.
	method mordisco() {if(peso > 0)
						{ peso = peso * 0.8 - 1 			
						}else{ peso = 0}
	}
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	method peso() {return peso}
	method precio() { return  12}
	method gusto() {return "chocolate"}
	method libreGluten(){return false}

	// TODO Acá la validación > 0 es innecesaria, no va a pasar nunca.
	method mordisco(){return if(peso > 0)
						{peso = peso * 0.8
						}else{ peso = 0
							 }
					 }
}

object caramelo {
	var peso = 5
	method peso(){return peso}
	method precio(){return 1}
	method gusto(){return "frutilla"}
	method libreGluten() {return true}
	method mordisco(){if(peso > 0)
		{peso = peso - 1
		// TODO No podés asignar un string en peso, rompés el caramelo.
		}else{ peso ="ya no hay mas caramelo "
			 }
		}
}

object chupetin {
	var peso = 7
	method peso(){return peso}
	method precio(){return 2}
	method gusto(){return "naranja"}
	method libreGluten(){return true}
	method mordisco(){if(peso > 2)
					{peso -= peso * 0.1				
					// TODO Esta línea no tiene sentido.
					}else{ peso}
	}
}

object oblea {
	var peso = 250
	method peso(){return peso}
	method precio(){return 5}
	method libreGluten(){return false}
	method gusto(){return "vainilla"}
	method mordisco(){if(peso > 70)
					 {peso = peso * 0.5	
					 }else{peso -= peso * 0.25 }	
	}
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var  pesoActual
	method libreGluten(){return false}
	
	method pesoInicial(cuanto) { /* al principio, el peso actual coincide con el inicial */
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method peso(){
		return pesoActual
	}
	method precio(){return pesoInicial * 0.5}
	
	// TODO El peso actual podría terminar siendo negativo	
	method mordisco(){ pesoActual = pesoActual -2}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() {return golosinaInterior.precio() + 2}
	method peso() { return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	var peso = 5
	var property sabores = ["frutilla","chocolate","naranja"]
	var property sabor = sabores.first()
	var cantMordiscos = 0
	var property libreGluten = true
	method peso(){return peso}
	method precio() {return if (libreGluten) 7 else 10}
	method mordisco(){
		cantMordiscos = if (cantMordiscos >= sabores.size() - 1) 0 else cantMordiscos + 1
		sabor = sabores.get(cantMordiscos)
	}
	method gusto(){return sabor}
			
}
