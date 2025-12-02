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
    
    var body: some View {
        VStack(spacing:20){
            TextField(
                "username", text: $username
            ).frame(maxWidth: 200)
                .textFieldStyle(.roundedBorder)
            
            HStack{
                SecureField(
                    "password", text: $password
                ).frame(maxWidth: 200)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: handleLogin) {
                    Image(systemName: "greaterthan.square.fill")
                }
            }.frame(maxWidth: 200)
                                           
        }.frame(maxHeight:200)
        
        .alert(alertMessage, isPresented: $showAlert) {
            Button("Ok", role: .cancel){}
        }
    }
    
    private func handleLogin() {
        if username == "Admin" && password == "123" {
            alertMessage = "Login feito com sucesso!"
        } else {
            alertMessage = "Credenciais invalidas!"
        }
        
        showAlert = true
    }
}

#Preview {
    ContentView()
}
