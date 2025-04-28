//
//  PantallaPersonajes.swift
//  RedesSociales
//
//  Created by alumno on 4/7/25.
//

import SwiftUI

// Para cargar una imagen por deafult cuando se descargue la imagen

//https://www.hackingwithswift.com/quick-start/swiftui/how-to-load-a-remote-image-from-a-url

struct PantallaPersonajes: View {
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View {
            NavigationStack{
                if(controlador.pagina_resultados != nil){
                    ScrollView{
                        LazyVStack{
                            ForEach(controlador.pagina_resultados!.items){ personaje in
                                NavigationLink {
                                    Text("Hola mundo \(controlador.personaje?.originPlanet?.name)")
                                } label: {
                                    Text("El personaje es \(personaje.name)")
                                    AsyncImage(url: URL(string: personaje.image))
                                }.simultaneousGesture(TapGesture().onEnded({
                                    controlador.descargar_informacion_personaje(id: personaje.id)
                                }))
                            }
                        }
                    }
                }
            }
        }
}


#Preview {
    PantallaPersonajes()
        .environment(ControladorAplicacion())
}
//se debe de hacer que cuando precione la imagen de un personaje me muestre en la siguiente pantalla que ahora muestra "Hola mundo nil"
//muestre todos los datos acerca del personaje
