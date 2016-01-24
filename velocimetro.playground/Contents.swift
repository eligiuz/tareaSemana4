//: velocimetro de automovil

import UIKit

enum velocidades : Int {

    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial : velocidades){
        self = velocidadInicial
    }
 
}

class Auto {
    var velocidad : velocidades
    
    init( velocidad : velocidades){
        self.velocidad = velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let actualV = velocidad
        var Cadena = " "

        switch actualV {
        case .apagado:
            Cadena = "Apagado"
            velocidad = .velocidadBaja
        case .velocidadBaja:
            Cadena = "Velocidad baja"
            velocidad = .velocidadMedia
        case .velocidadMedia:
            Cadena = "Velocidad media"
            velocidad = .velocidadAlta
        case .velocidadAlta:
            Cadena = "Velocidad alta"
            velocidad = .velocidadMedia
        default:
            "ocurrio un error"
            
        }
        let resultado = (actualV.rawValue, Cadena)
        return resultado
        
    }
    
}

var vw = Auto(velocidad: .apagado)

for i in 0...19{
    
    print("\(i + 1) \(vw.cambioDeVelocidad())")
}

