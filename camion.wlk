import cosas.*


object camion {
    const cosasCargadas = []

    method cargar(cosas) {
      cosasCargadas.add(cosas)
    } 
    method descargar(cosas) {
      cosasCargadas.remove(cosas)
    }
    method pesoTotal() = 1000 + cosasCargadas.sum({c => c.peso()})

    method pesoCosasSonPares() = cosasCargadas.all({c => c.peso() / 2 ==0})

    method cosaQuePesa(peso) = cosasCargadas.any({c=> c.peso() == peso})

    method cosaConNivelDePeligrosidad(nivel) = cosasCargadas.any({c=> c.nivelPeligrosidad() == nivel})

    method cosasQueSuperanNivelPeligrosidad(nivel) = cosasCargadas.filter({c=> c.nivelPeligrosidad() > nivel}) 

    method cosasQueSuperanPeligrosidadDeAgo(algo) = cosasCargadas.filter({c=> c.nivelPeligrosidad() > algo.nivelPeligrosidad()})

    method estaExcedidoDePeso() = self.pesoTotal() > 2500

    method puedeCircuclar(nivel) = !self.estaExcedidoDePeso() and cosasCargadas.all({c => c.nivelPeligrosidad() < nivel})

   method tieneUnaCosaEntre(pesoMin,pesoMax) =  cosasCargadas.contains({c => pesoMin< c.peso() > pesoMax})

   method cosaMasPesada() = cosasCargadas.max({c=>c.peso()})
}

/*preuba */
/*peuba2*/