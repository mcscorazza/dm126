//
//  Home.swift
//  Aula2_Swift
//
//  Created by Marcos Corazza on 12/3/25.
//
import SwiftUI

struct HomeView: View {
    var usuario: String
    
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
            
            Text("Bem-vindo, \(usuario)!")
                .font(.title)
                .padding()
            
            Text("Você está logado na área restrita.")
                .foregroundColor(.gray)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView(usuario: "Teste")
}
