//repartidores
object jeanGrey{

    const pesoRepartidor = 65 

    const puedeLlamar = true

    method puedeLlamar() = puedeLlamar

    method pesoRepartidor() = pesoRepartidor 

}
object neo{

    var puedeLlamar = true

    const pesoRepartidor = 0

    method puedeLlamar() = puedeLlamar

    method pesoRepartidor() = pesoRepartidor  

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

    method vehiculoDeViaje(vehiculo) {
      vehiculoDeViaje = vehiculo
    }
    method pesoRepartidor() {
      return pesoPersona + vehiculoDeViaje.pesoVehiculo()
    }
    method pesoPersona(peso) {
      pesoPersona = peso
    }  
  
}
//vehiculos
object moto {
    const pesoVehiculo = 100

    method pesoVehiculo() = pesoVehiculo
}

object camion {
    const pesoVehiculo = 500
    var cantAcoplados = 0
    const pesoAcoplado = 500 

    method pesoVehiculo() = pesoVehiculo + (pesoAcoplado*cantAcoplados)

    method cantAcoplados() = cantAcoplados

    method cantAcoplados(cant) {
      cantAcoplados = cant
    } 

}
//paquetes
object paquete {
    var estaPago = true

    method estaPago() = estaPago

    method estaPago(estado) {
      estaPago = estado
    }
}
//destinos
object puenteBrooklyn {
    const pesoLimite = 1000

    method cumpleCondiciones(repartidor,paquete) {
      self.puedeEntregar(repartidor) 
      self.puedeSerEntregado(paquete)
    }
    method puedeEntregar(repartidor) {
      repartidor.pesoRepartidor() <= pesoLimite
    }
    method puedeSerEntregado(paquete) {
      paquete.estaPago()  
    }
}

object laMatrix {
    method cumpleCondiciones(repartidor,paquete) {
      self.puedeEntregar(repartidor)
      self.puedeSerEntregado(paquete)
    }
    method puedeEntregar(repartidor) {
      repartidor.puedeLlamar()
    }
    method puedeSerEntregado(paquete) {
      paquete.estaPago() 
    }
}
