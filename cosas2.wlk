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

    method bultos() {
        return 1
    }

    method consecuenciasDeLaCarga() {

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

    method bultos() {
        return 2
    }

    method consecuenciasDeLaCarga() {
        self.trasformateEnRobot()
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

    method bultos() {
        if (cantidad <= 100) {
            return 1
        } else if (cantidad.between(101, 300)) {
            return 2
        }
        else {
            return 3
        }
    }

    method consecuenciasDeLaCarga() {
        cantidad = cantidad + 12
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

    method bultos() {
        return 1
    }

    method consecuenciasDeLaCarga() {
        peso = (peso - 10).max(0) 
    }
}

object bateriaAntiaerea {
    var estaConMisiles = false

    method cargarMisiles() {
        estaConMisiles = true
    }

    method descargarMisiles() {
        estaConMisiles = false
    }

    method peso(){
        if (estaConMisiles) {
            return 300
        } else {
            return 0
        }
    }

    method esPesoPar() {
        return self.peso().even()
    }

    method bultos() {
        if (estaConMisiles) {
            return 2
        } else {
            return 1
        }
    }

    method consecuenciasDeLaCarga() {
        self.cargarMisiles()
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

    method bultos() {
        return 1 + cosasAdentro.sum({ elemento => elemento.bultos()})
    }

    method consecuenciasDeLaCarga() {
        if (not cosasAdentro.isEmpty()){
            cosasAdentro.forEach({elemento => elemento.consecuenciasDeLaCarga()})
        }
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

    method bultos() {
        return 1
    }

    method consecuenciasDeLaCarga(){
        peso = peso + 15
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

    method bultos() {
        return 2
    }
    method consecuenciasDeLaCarga() {
        
    }
}