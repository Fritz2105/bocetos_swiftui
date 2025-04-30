//
//  ContentView.swift
//  RedesSociales
//
//  Created by alumno on 3/24/25.
//

import SwiftUI
import PhotosUI


struct ContentView: View {
    @State var foto_seleccionada:
    PhotosPickerItem? = nil
    @State var foto_mostrar: UIImage? = nil
    
    var body: some View {
        PhotosPicker (selection: $foto_seleccionada){
            Image(uiImage: foto_mostrar ?? UIImage(resource: .avatar))
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipShape(.circle)
        }
        .onChange(of: foto_seleccionada){valor_anterior, valor_nuevo in
            Task{
                if let foto_seleccionada, let datos = try? await
                    foto_seleccionada.loadTransferable(type: Data.self){
                    if let imagen = UIImage(data: datos){
                        foto_mostrar = imagen
                    }
                }
            }
            
        }
        //GeneralPublicaciones()
    }
}

#Preview {
    ContentView()
        .environment(ControladorAplicacion())
}


