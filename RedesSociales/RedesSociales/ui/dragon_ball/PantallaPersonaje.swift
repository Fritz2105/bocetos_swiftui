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
        //Text("Pantala del personaje")
        ScrollView{
            LazyVStack{
                if (controlador.personaje != nil ){
                    
                        ScrollView{
                            //Text("Hello ,\(controlador.personaje?.originPlanet?.name)")
                            //Text("Nombre: \(controlador.personaje.name)")
                            Text("Nombre: \(controlador.personaje!.name)")
                                .bold()
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                               .fill(.cyan)
                                               .frame(width: 325, height: 250)
                                VStack{
                                    Text("Ki: \(controlador.personaje!.ki)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Ki maximo: \(controlador.personaje!.maxKi)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Raza: \(controlador.personaje!.race)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Genero: \(controlador.personaje!.gender)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Afiliacion: \(controlador.personaje!.affiliation)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text("Planeta: \(controlador.personaje!.originPlanet!.name)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                   
                                    /*
                                    Text("Transformacion: \(controlador.personaje!.transformations?)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                     */
                                     
                                }
                                .padding(35)
                            }
                            
                            Text("\nDescripcion:\n")
                                .multilineTextAlignment(.center)
                                .bold()
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(
                                     LinearGradient(
                                         colors: [.orange, .red],
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing
                                     )
                                    )
                                    .frame(width: 325)
                                
                                VStack{
                                    Text("\(controlador.personaje!.description)")
                                        .multilineTextAlignment(.center)
                                        .padding(35)
                                    
                                    AsyncImage(url: URL(string: controlador.personaje!.image)){ image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 150, height: 300)
                                     
                                }
                                
                            }
                            
                            
                            
                        }
                        
                        .foregroundColor(.white)
                        .font(.custom("Courier New", size: 16))
                        .padding(25)
                        
                        
                    
                    
                }
                else{
                    Text("No esta cargando dios mio ayuda")
                        .foregroundColor(.white)
                }
            }
        }.background(Color.black)
            
    }
}
