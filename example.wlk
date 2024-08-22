 object manic {

  var cantidadDeEstrellas = 0

  method agarraEstrellas(){
    cantidadDeEstrellas += 8
  }

  method regalarEstrella(){
    if(cantidadDeEstrellas > 0){
      cantidadDeEstrellas -= 1
    }
  }
  
  method tieneTodoListo() = cantidadDeEstrellas >= 4

  //comentario :)

 }

 object fiesta {

  var globos = 0
  var anfitrion = manic

  method estaPreparada() = self.tieneSuficientesGlobos() and anfitrion.tieneTodoListo()
 
  method tieneSuficientesGlobos() = globos >= 50

  method sumarGlobos(nuevosGlobos) {
    globos += nuevosGlobos
  }

  method globos() = globos
 }
