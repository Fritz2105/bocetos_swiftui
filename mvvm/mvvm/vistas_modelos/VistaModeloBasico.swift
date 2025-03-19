//
//  VistaModeloBasico.swift
//  mvvm
//
//  Created by alumno on 3/14/25.
//

import Foundation

@Observable
class VistaModeloBasico{
    var estado_actual_de_la_aplicacion: EstadosDeLaApliacion = .mostrando_series
    var series_registradas: Array<InformacionSerie> = []
    
    func agregar_serie(serie: InformacionSerie? = nil) -> Bool{
        if let serie_nueva = serie{
            if serie_nueva.nombre == ""{
                return false
            }
            series_registradas.append(serie_nueva)
        }
        else{
            series_registradas.append(InformacionSerie(nombre:"prueba", tipo: "prueba", fecha_estreno: 2017, sinopsis: "Aqui va ka subiosus", caratula: "imagen_fake1"))
        }
        //print("Hola mundo, desde el controlador")
        return true
    }
}
