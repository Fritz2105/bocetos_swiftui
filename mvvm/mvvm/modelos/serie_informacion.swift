//
//  aqui_van_sus_modelos.swift
//  mvvm
//
//  Created by alumno on 3/14/25.
//
import Foundation

struct Temporada{
    var nombre: String
    var cantidad_capitulos: Int
}

struct Plataforma{
    var nombre: String
    var icono: String
}
struct InformacionSerie{
    var nombre: String
    var tipo: String
    
    var plataformas: [Plataforma] = [] // Aqui tengo una deuda tecnica para indicar otras plataformas de forma mas facil
    
    var fecha_estreno: Int
    var sinopsis: String
    
    var temporadas: [Temporada] = []
    
    var caratula: String
    

}
