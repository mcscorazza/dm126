//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct NavigationBar: View {

    @ObservedObject var userManager: UserManager

    @State private var nomeAtual: String = ""
    @State private var showAlert: Bool = false
    @State private var nomeNovo: String = ""
    @State private var senhaNova: String = ""

    var body: some View {
        HStack {
            Menu {
                ForEach(userManager.users) {
                    user in Button(user.username) { nomeAtual = user.username }
                }
            } label: {
                HStack {
                    Text(nomeAtual).font(.headline).fontWeight(.bold)
                    Image(systemName: "chevron.down")
                }
            }
            Button(action: { showAlert = true }) {
                Image(systemName: "person.badge.plus.fill")
                    .font(.title3)
                    .foregroundStyle(.gray)
            }.sheet(isPresented: $showAlert) {
                VStack {
                    Text("Adicionar novo usuário")
                        .font(.headline)
                        .padding(.bottom, 10)
                    
                    TextField("Digite o nome...", text: $nomeNovo)
                        .frame(maxWidth: 280)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textInputAutocapitalization(.never)
                    
                    SecureField("Digite a senha...", text: $senhaNova)
                        .frame(maxWidth: 280)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    HStack {
                        Button("Cancelar") {
                            showAlert = false
                            nomeNovo = ""
                        }.foregroundStyle(.red)
                        Button("Adicionar") {
                            if !nomeNovo.isEmpty && !senhaNova.isEmpty {
                                userManager.addUser(
                                    user: nomeNovo, pass: senhaNova)
                                nomeAtual = nomeNovo
                                nomeNovo = ""
                                senhaNova = ""
                                showAlert = false
                            }
                        }.foregroundStyle(.blue)
                            .disabled(nomeNovo.isEmpty || senhaNova.isEmpty)
                    }.padding(.top, 10)
                }
                .presentationDetents([.fraction(0.35)])
                .padding()
            }.padding(.horizontal)
                .onAppear{
                    if let primeiro = userManager.users.first {
                        nomeAtual = primeiro.username
                    }
                }
        }
    }
}

#Preview {
    NavigationBar(userManager: UserManager())
}
