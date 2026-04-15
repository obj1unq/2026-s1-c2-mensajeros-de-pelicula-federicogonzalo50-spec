//repartidores
object jeanGrey{

    const pesoRepartidor = 65 

    const puedeLlamar = true

    method puedeLlamar() = puedeLlamar

    method peso() = pesoRepartidor 

}
object neo{

    var puedeLlamar = true

    const pesoRepartidor = 0

    method puedeLlamar() = puedeLlamar

    method peso() = pesoRepartidor  

    method tieneCredito() {
      puedeLlamar = true
    }
    method noTieneCredito() {
      puedeLlamar = false
    } 
}

object saraConnor {

    var pesoPersona = 0

    var vehiculoDeViaje = moto

    const puedeLlamar = false 
    
    method puedeLlamar() = puedeLlamar 

    method vehiculoDeViaje() = vehiculoDeViaje

    method vehiculoDeViaje(vehiculo) {
      vehiculoDeViaje = vehiculo
    }
    method peso() {
      return pesoPersona + vehiculoDeViaje.peso()
    }
    method pesoPersona() = pesoPersona

    method pesoPersona(peso) {
      pesoPersona = peso
    }  
  
}
//vehiculos
object moto {
    const peso = 100

    method peso() = peso
}

object camion {
    const peso = 500
    var cantAcoplados = 0
    const pesoAcoplado = 500 

    method peso() = peso + (pesoAcoplado*cantAcoplados)

    method cantAcoplados() = cantAcoplados

    method cantAcoplados(cant) {
      cantAcoplados = cant
    } 

}
//paquetes
object paquete {
    var estaPago = true

    method estaPago() = estaPago

    method puedeSerEntregado(repartidor,destino) {
      return estaPago  && destino.condicionesRepartidor(repartidor)
    }
    method faltaPagar() {
      estaPago = false
    } 
    method paquetePagado() {
      estaPago = true
    }
}
//destinos
object puenteBrooklyn {
    const pesoLimite = 1000
    method condicionesRepartidor(repartidor) {
      return repartidor.peso() <= pesoLimite
    }
}

object laMatrix {
    method condicionesRepartidor(repartidor) {
      return repartidor.puedeLlamar()
    }
}
