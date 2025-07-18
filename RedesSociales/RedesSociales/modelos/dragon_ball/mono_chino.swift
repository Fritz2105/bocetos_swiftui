//
//  mono_chino.swift
//  RedesSociales
//
//  Created by alumno on 4/2/25.
//

class MonoChino: Identifiable, Codable{
    let id: Int
    let name: String
    let ki: String
    let maxKi: String
    let race: String
    let gender: String
    let description: String
    let affiliation: String
    let image: String
    

    let originPlanet: Planeta?
    
    //let transformations: Array<Transformacion>
    let transformations: [Transformacion]?
}
