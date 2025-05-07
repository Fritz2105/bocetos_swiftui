//
//  PrevistaMonoChino.swift
//  RedesSociales
//
//  Created by alumno on 5/2/25.
//

import SwiftUI

struct PrevistaMonoChino: View {
    var mono_chino: MonoChino
    
    var body: some View {
        Text("Est@ es de \(mono_chino.name)")
            .foregroundColor(.white)
            .font(.custom("Courier New", size: 16))
            //.font(.custom("japanese", size: 16))
    }
}
