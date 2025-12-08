//
//  SignUpView.swift
//  App_MovieList
//
//  Created by Marcos Corazza on 12/8/25.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var newUsername = ""
    @State private var newPassword = ""
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                
                Form {
                    Section(header: Text("Dados de Acesso").foregroundStyle(.gray)) {
                        TextField("Novo Usuário", text: $newUsername)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        
                        SecureField("Nova Senha", text: $newPassword)
                    }
                    .listRowBackground(Color.white.opacity(0.1))
                    if !errorMessage.isEmpty {
                        Section {
                            Text(errorMessage)
                                .foregroundStyle(.red)
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .listRowBackground(Color.clear)
                    }
                    
                    Section {
                        HStack(spacing: 15) {
                            Button(action: {
                                dismiss()
                            }) {
                                Text("Cancelar")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .background(Color.gray.opacity(0.4))
                                    .cornerRadius(8)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            Button(action: {
                                registerUser()
                            }) {
                                Text("Cadastrar")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .background(newUsername.isEmpty || newPassword.isEmpty ? Color.red.opacity(0.5) : Color.red)
                                    .cornerRadius(8)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .disabled(newUsername.isEmpty || newPassword.isEmpty)
                        }
                    }
                    .listRowBackground(Color.clear)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Novo Cadastro")
            .navigationBarTitleDisplayMode(.inline)
            .preferredColorScheme(.dark)
        }
    }
    
    func registerUser() {
        let success = UserManager.shared.addUser(user: newUsername, pass: newPassword)
        if success {
            dismiss()
        } else {
            errorMessage = "O usuário '\(newUsername)' já existe."
        }
    }
}

#Preview {
    SignUpView()
}
