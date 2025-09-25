object knightRider {
    method peso(){
        return 500
    }

    method peligrosidad() {
      return 10
    }
    method esPesoPar() {
        return self.peso().even()
    }
}

object bumblebee {
    var esAuto = true

    method trasformateEnAuto() {
        esAuto = true
    }

    method trasformateEnRobot() {
        esAuto = false
    }

    method peso() {
        return 800
    }

    method peligrosidad() {
        if (esAuto) {
            return 15
        } else {
            return 30
        }
    }

    method esPesoPar() {
        return self.peso().even()
    }
}

object ladrillos {
    var cantidad = 10

    method cantidad(nuevaCantidad) {
        cantidad = nuevaCantidad
    }

    method peso() {
        return 2 * cantidad
    }

    method peligrosidad() {
        return 2
    }

    method esPesoPar() {
        return self.peso().even()
    }
}

object arena {
    var peso = 0

    method peso(){
        return peso
    }
    method peso(nuevoPeso) {
    peso = nuevoPeso
    }

    method peligrosidad() {
    return 1
    }

    method esPesoPar() {
        return self.peso().even()
    }
}

object bateriaAntiaerea {
    var estaConMiciles = false

    method cargarMisiles() {
        estaConMiciles = true
    }

    method descargarMisiles() {
        estaConMiciles = false
    }

    method peso(){
        if (estaConMiciles) {
            return 300
        } else {
            return 0
        }
    }

    method esPesoPar() {
        return self.peso().even()
    }
}

object contenedor {
  const cosasAdentro = []

  method agregar(unaCosa) {
    cosasAdentro.add(unaCosa)
  }

  method agregarVarias(variasCosas) {
    cosasAdentro.addAll(variasCosas)
  }

  method quitar(unaCosa) {
    cosasAdentro.remove(unaCosa)
  }

  method peso() {
    return 100 + cosasAdentro.sum({cosa => cosa.peso()})
  }

  method peligrosidad() {
    if (cosasAdentro.isEmpty()){
        return 0
    } else {
    return cosasAdentro.max({cosa => cosa.peligrosidad()}).peligrosidad()
    }
    }

    method esPesoPar() {
        return self.peso().even()
    }
}

object residuo {
    var property peso = 0

    method peligrosidad() {
        return 200
    } 
  
    method esPesoPar() {
        return self.peso().even()
    }
}

object embalaje {
    var cosaEnvuelta = arena

    method envolver(unaCosa) {
        cosaEnvuelta = unaCosa
    }

    method peso() {
        return cosaEnvuelta.peso()
    }

    method peligrosidad() {
        return cosaEnvuelta.peligrosidad() / 2
    }

    method esPesoPar() {
        return self.peso().even()
    }
}