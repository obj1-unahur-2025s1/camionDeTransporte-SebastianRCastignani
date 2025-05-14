
object knightRider {
    
method peso() = 500
method nivelPeligrosidad() = 15
}

object bumblebee {
  
  var estaTransformado = false

  method peso() = 800

  method transformar() {
    estaTransformado = !estaTransformado
  }

  method estaTransformado() = estaTransformado

  method nivelPeligrosidad() = if(self.estaTransformado()) 30 else 15
}


object paqueteLadrillos {

  var cantidadLadrillos= 0

  method CargarLadrillo(cantidad) {
    cantidadLadrillos += cantidad
  }
  method peso() = cantidadLadrillos * 2
  method nivelPeligrosidad() = 2

}

object arenaGranel {
    var peso = 20
  method cambiarPeso(pesoNuevo){
    peso = pesoNuevo
  }
  method peso() = peso
  method nivelPeligrosidad() = 1

}

object bateriaAntiarea {
  var tieneMisiles = false


  method tieneMisiles() = tieneMisiles
  method cambiarEstado() {
    tieneMisiles != tieneMisiles
  }
  method nivelPeligrosidad() {
    if (tieneMisiles) {
        return 100
    }
    else{
        return 0
    }
  }
  method peso() {
    if (tieneMisiles){
        return 300
    }
    else{
        return 200
    }
  }
}

