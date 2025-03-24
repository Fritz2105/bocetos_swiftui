//
//  Publicacion.swift
//  RedesSociales
//
//  Created by alumno on 3/24/25.
//

import SwiftUI
/*
 Codable estructura a json
 Encodable
 Decodable de json a estructura
 
 */

struct Publicacion: Identifiable, Codable{
    let userId: Int
    let id: Int
    
    let title: String
    let body: String
    
}
