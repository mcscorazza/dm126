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
    @State private var wrongUser: CGFloat = 0
    @State private var wrongPass: CGFloat = 0
    
    @State private var showSignUpModal: Bool = false
    
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

                    Button(action: {showSignUpModal = true}) {
                        HStack {
                            Text("Adicionar Novo").font(.title3)
                                .foregroundStyle(.white.opacity(0.8))

                            Image(systemName: "person.badge.plus.fill")
                                .font(.title3)
                                .foregroundStyle(.gray)
                        }.padding(10)
                            .background(.black.opacity(0.35))
                            .cornerRadius(4)
                    }
                    .padding(.top,80)
                    .sheet(isPresented: $showSignUpModal) {
                        SignUpView()
                            .presentationDetents([.fraction(0.35)])
                    }
                }
            }
        }
    }
    func performLogin() {
            wrongUser = 0
            wrongPass = 0
            if UserManager.shared.authenticate(username: username, pass: password) {
                withAnimation {
                    isLogged = true
                }
                
            } else {
                withAnimation {
                    wrongUser = 2
                    wrongPass = 2
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
