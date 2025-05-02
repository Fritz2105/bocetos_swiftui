//
//  PantallaPersonaje.swift
//  RedesSociales
//
//  Created by alumno on 5/2/25.
//

import SwiftUI

struct PantallaPersonaje: View {
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View {
        Text("Pantala del personaje")
        ScrollView{
            LazyVStack{
                ForEach(controlador.pagina_resultados!.items ){ personaje in
                    
                        ScrollView{
                            //Text("Hello ,\(controlador.personaje?.originPlanet?.name)")
                            Text("Nombre: \(personaje.name)")
                            Text("Ki: \(personaje.ki)")
                            Text("Ki maximo: \(personaje.maxKi)")
                            Text("Raza: \(personaje.race)")
                            Text("Genero: \(personaje.gender)")
                            Text("Afiliacion: \(personaje.affiliation)")
                            Text("Planeta: \(personaje.originPlanet?.name)")
                            Text("Transformacion: \(personaje.originPlanet?.name)")
                            Text("Descripcion: \(personaje.description)")
                            
                        }
                        
                        
                    
                    
                }
            }
        }
    }
}
