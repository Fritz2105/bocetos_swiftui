//
//  ContentView.swift
//  RedesSociales
//
//  Created by alumno on 3/24/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


/*
struct ContentView: View {
    @Environment(ContorladorGlobal.self) var controlador
    
    var body: some View {
        // @Bindable var controlador = controlador
        ScrollView{
            VStack{
                Text("cantidad: \(controlador.publicaciones.count)")
                
                ForEach(controlador.publicaciones){ publicacion in
                    Text("\(publicacion.id)")
                    LazyVStack{
                        Text("\(publicacion.title)")
                        Text("\(publicacion.body)")
                    }
                }
            }
        }
        .onAppear {
            print("hola mundo")
            /*
            if controlador.publicaciones.isEmpty {
                Task{
                    await controlador.obtener_publicaciones()
                }
            }
             */
        }
    }
        
}

#Preview {
    ContentView()
        .environment(ContorladorGlobal())
}
*/

