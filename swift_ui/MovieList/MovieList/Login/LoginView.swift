//
//  LoginView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct LoginView: View {

    @Binding var isLogged: Bool
    
    

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    @State private var wrongUser: CGFloat = 0
    @State private var wrongPass: CGFloat = 0
    
    @State private var newUser: String = ""
    @State private var newPass: String = ""

    var body: some View {

        NavigationStack {
            ZStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                Rectangle()
                    .frame(width: 400, height: 500)
                    .cornerRadius(20)
                    .rotationEffect(.degrees(60))
                    .foregroundColor(.white.opacity(0.3))
                VStack(spacing: 15) {
                    Image("ripa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 20)
                        .shadow(radius: 10)
                    Text("App MovieList")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)

                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.85))
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(.red, lineWidth: CGFloat(wrongUser))
                        )
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.85))
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(.red, lineWidth: CGFloat(wrongPass))
                        )

                    Button(action: {
                        performLogin()
                    }) {
                        Text("Login")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.red)
                            .cornerRadius(4)

                    }
                    .padding(.top, 10)

                    Button(action: {showAlert = true}) {
                        HStack {
                            Text("Adicionar Novo").font(.title3)
                                .foregroundStyle(.gray)

                            Image(systemName: "person.badge.plus.fill")
                                .font(.title3)
                                .foregroundStyle(.gray)
                        }.padding(10)
                            .background(.black.opacity(0.25))
                            .cornerRadius(4)
                    }.sheet(isPresented: $showAlert) {
                        VStack {
                            Text("Adicionar novo usuário")
                                .font(.headline)
                                .padding(.bottom, 10)
                            
                            TextField("Digite o nome...",text: $newUser)
                                .frame(maxWidth: 280)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .textInputAutocapitalization(.never)
                            
                            SecureField("Digite a senha...", text: $newPass)
                                .frame(maxWidth: 280)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }.presentationDetents([.fraction(0.35)])
                            .padding()
                            
                    }.background(.black.opacity(0.5))
                }
            }
        }
    }
    private func performLogin() {
        wrongUser = 0
        wrongPass = 0
        if username == "Admin" && password == "1234" {
            print("Login realizado com sucesso")
            withAnimation {
                isLogged = true
            }
        } else {
            print("Erro de login")
            withAnimation {
                if username != "admin" { wrongUser = 2 }
                if password != "1234" { wrongPass = 2 }
            }
        }
    }

}

#Preview {
    struct PreviewWrapper: View {
        @State var isLogged = false
        var body: some View {
            if isLogged {
                ContentView(isLogged: $isLogged)
            } else {
                LoginView(isLogged: $isLogged)
            }
        }
    }
    return PreviewWrapper()
}
