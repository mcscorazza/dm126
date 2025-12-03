//
//  ContentView.swift
//  Aula2_Swift
//
//  Created by Marcos Corazza on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var username:String = ""
    @State private var password:String = ""

    @State private var alertMessage:String = ""
    @State private var showAlert:Bool = false

    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing:20){
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Image(systemName: "square.and.arrow.down")
                    .font(.largeTitle)
                    .rotationEffect(.degrees(90))
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)
                TextField("username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .frame(maxWidth: 280)
                    .textInputAutocapitalization(.never)
                SecureField("password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .frame(maxWidth: 280)
                Button(action: handleLogin) {
                    Text("Logar")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: 280)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 10)                       
            }.padding()
            
            .navigationDestination(isPresented: $isLoggedIn) {
                HomeView(usuario: username)
            }

            .alert(alertMessage, isPresented: $showAlert) {
                Button("Ok", role: .cancel){}
            }
        }
    }
    private func handleLogin() {
        if username == "Admin" && password == "123" {
            isLoggedIn = true
        } else {
            alertMessage = "Credenciais invalidas!"
            showAlert = true
        }
    }
}

#Preview {
    ContentView()
}
