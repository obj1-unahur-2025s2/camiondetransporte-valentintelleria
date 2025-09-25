import cosas.*


object camion {
    const carga = []

    method cargar(unaCosa) {
        carga.add(unaCosa)
    }

    method descargar(unaCosa) {
        carga.remove(unaCosa)
    }

    method pesoTotal() {
         return 1000 + carga.sum({elemento => elemento.peso()})
    }

    method todoPesoPar() {
        carga.all({ elemento => elemento.esPar()})
    }

    method algunaCosaPesa(unValor) {
        return carga.any({elemento => elemento.peso() == unValor})
    }

    method primerCosaConPeligrosidad(unValor) {
        return carga.find({elemento => elemento.peligrosidad() == unValor})
    }

    method todasLasCosasConMasMasPeligrosidad(unValor) {
        return carga.filter({elemento => elemento.peligrosidad() > unValor})
    }

    method cosasSuperanPeligrosidadDe(unaCosa) {
        return carga.filter({elemento => elemento.peligrosidad() > unaCosa.peligrosidad()})
    }
}