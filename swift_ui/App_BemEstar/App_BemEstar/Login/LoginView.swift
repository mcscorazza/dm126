//
//  LoginView.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/5/25.
//

import SwiftUI

struct LoginView: View {

    @StateObject private var userManager = UserManager()

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var wrongUser: Int = 0
    @State private var wrongPass: Int = 0
    @State private var showHomeScreen: Bool = false

    @available(*, deprecated)
    var body: some View {
        NavigationStack {
            ZStack {
                Color.mint
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.3))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack(spacing: 15) {
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.red, lineWidth: CGFloat(wrongUser))
                        )

                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.red, lineWidth: CGFloat(wrongPass))
                        )

                    Button("Login") {
                        authenticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.mint)
                    .cornerRadius(25)

                    NavigationLink(
                        destination: ContentView(userManager: userManager),
                        isActive: $showHomeScreen
                    ) {
                        EmptyView()
                    }
                }
            }
        }
    }

    func authenticateUser(username: String, password: String) {
        guard
            let user = userManager.users.first(where: {
                $0.username == username
            })
        else {
            withAnimation { wrongUser = 2 }
            wrongPass = 0
            return
        }
        wrongUser = 0

        let hashedAttempt = LoginType.sha256(password)

        if hashedAttempt == user.passwordHash {
            wrongPass = 0
            showHomeScreen = true
        } else {
            wrongPass = 1
        }
    }
}

#Preview {
    LoginView()
}
