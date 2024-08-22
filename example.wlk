object manic {
  var cantidadDeEstrellas = 0
  
  method agarraEstrellas() {
    cantidadDeEstrellas += 8
  }
  
  method regalarEstrella() {
    if (cantidadDeEstrellas > 0) {
      cantidadDeEstrellas -= 1
    }
  }
  
  method tieneTodoListo() = cantidadDeEstrellas >= 4
}

object chuy {
  method tieneTodoListo() = true
}

object capy {
  var cantidadLatas = 0
  
  method recolectarLatas() {
    cantidadLatas += 1
  }
  
  method reciclarLatas() {
    cantidadLatas = 0.max(cantidadLatas - 5)
  }
  
  method tieneTodoListo() = cantidadLatas < 3
}

object fiesta {
  var globos = 0
  var anfitrion = manic
  
  method estaPreparada() = self.tieneSuficientesGlobos() and anfitrion.tieneTodoListo()
  
  method tieneSuficientesGlobos() = globos >= 50
  
  method sumarGlobos(nuevosGlobos) {
    globos += nuevosGlobos
  }
  
  method anfitrion(anfitrionNuevo) {
    anfitrion = anfitrionNuevo
  }
  
  method globos() = globos
}