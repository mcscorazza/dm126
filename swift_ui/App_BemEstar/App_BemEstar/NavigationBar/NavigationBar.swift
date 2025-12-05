//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct NavigationBar: View {

  @State private var nomeAtual: String = "Marcos Corazza"
  @State private var nomes: [String] = ["Marcos Corazza"]
  @State private var showAlert: Bool = false
  @State private var nomeNovo: String = ""
  

  var body: some View {
    HStack {
      Menu {
        ForEach(nomes, id: \.self) {
          nome in Button(nome) { nomeAtual = nome }
        } label: { Text(nomeAtual).font(.headline).fontWeight(.bold) }
      }
      Button(action: {showAlert = true}) {
         Image(systemName: "person.badge.plus.fill")
         .font(.title3)
         .foregroundStyle(.gray)
      }.sheet(isPresented: $showAlert){
        VStack{
          Text("Adicionar novo nome").font(.headline)
          TextField("Digite o nome...", text: $novoNome).textFieldStyle(RoudedBorderTextFieldStyle())
          HStack{
            Button("Cancelar") { showAlert = false; nomeNovo = ""} .foregroundStyle(.red)
            Button("Adicionar") {
              if !nomeNovo.isEmpty {
                nomes.append(nomeNovo)
                nomeAtual = NomeNovo
                nomeNovo = ""
                showAlert = false
              }
            }.foregroundStyle(.blue)
          }
        }.presentationDetents([.fraction(0.2)]).padding()
      }
    }
  }
}

#Preview {
    NavigationBar()
}
