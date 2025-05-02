//
//  PantallaPersonajes.swift
//  RedesSociales
//
//  Created by alumno on 4/7/25.
//

import SwiftUI

// PAra que peudas cargaer una imagen por deafult cuando descargues la imagen
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-load-a-remote-image-from-a-url
struct PantallaPersonajes: View {
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View {
        NavigationStack{
            if(controlador.pagina_resultados != nil){
                ScrollView{
                    LazyVStack{
                        ForEach(controlador.pagina_resultados!.items){ personaje in
                            NavigationLink{
                                ZStack{
                                    PantallaPersonaje()
                                }
                                .background(Color.cyan) //COLOR DE FONDO DE PANTALLA PERSONAJE
                            } label : {
                               // PrevistaMonoChino(mono_chino: personaje)
                                //AQUI
                                
                                VStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                                       .fill(.black)
                                                       .frame(width: 325, height: 50)
                                        
                                        PrevistaMonoChino(mono_chino: personaje)
                                    }
                                   
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(  LinearGradient(colors: [.cyan,.blue, .indigo],
                                                                              startPoint: .top,
                                                                              endPoint: .bottom)
                                                       )
                                                       .frame(width: 325, height: 380)
                                        Circle()
                                            .fill(.green)
                                                       .frame(width: 225, height: 225)
                                        Circle()
                                                       .fill(
                                                        LinearGradient(
                                                            colors: [.orange, .red],
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing
                                                        )
                                                       )
                                                       .frame(width: 200, height: 200)
                                        /*LinearGradient(
                                            colors: [.orange, .red],
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                         .ignoresSafeArea()
                                         */
                                        
                                        AsyncImage(url: URL(string: personaje.image)){ image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 150, height: 300)
                                        
                                        
                                    }
                                    
                                }
                                
                            }.simultaneousGesture(TapGesture().onEnded({
                               //  Aqui ejecutamos codigo magico
                            }))
                            
                            
                        }
                    }
                    
                }.background(.black)
                    
            }
        }.onAppear {
            Task {
                await controlador.descargar_monos_chinos()
            }
        }
    }
}


#Preview {
    PantallaPersonajes()
        .environment(ControladorAplicacion())
}
/*
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
                                    //AQUI
                                   // PantallaPersonaje()
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
                                    
                                    
                                    AsyncImage(url: URL(string: personaje.image)){ image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 200, height: 400)
                                    }
                                    
                                    
                                    
                                } label: {
                                    Text("El personaje es \(personaje.name)")
                                    /*AsyncImage(url: URL(string: personaje.image),
                                     scale:3)*/
                                    AsyncImage(url: URL(string: personaje.image)){ image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 60, height: 100)                                }.simultaneousGesture(TapGesture().onEnded({
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
 */
//con el siguiente codigo en Swift UI se muestran los personajes y su nombre en la pantalla, ahora se debe de hacer que cuando precione la imagen de un personaje me muestre en la siguiente pantalla que ahora muestra "Hola mundo PRUEBA nil"
//muestre todos los datos acerca del personaje
/*
Fuentes para investigar:
 https://www-swiftyplace-com.translate.goog/blog/asyncimage-load-image-url-swiftui?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc
 Color en figura:
 https://stackoverflow.com/questions/56488577/how-to-fill-shape-with-gradient-in-swiftui
 Degradado:
 https://www-swiftbysundell-com.translate.goog/articles/backgrounds-and-overlays-in-swiftui/?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc
 Formas integradas:
 https://www-hackingwithswift-com.translate.goog/quick-start/swiftui/swiftuis-built-in-shapes?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc
*/
