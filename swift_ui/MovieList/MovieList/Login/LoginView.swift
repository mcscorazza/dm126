//
//  LoginView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct LoginView: View {

    @State private var username: String = ""
    @State private var password: String = ""
    @State private var wrongUser: Int = 0
    @State private var wrongPass: Int = 0
    @State private var showHomeScreen: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                Rectangle()
                    .frame(width:400, height: 500)
                    .cornerRadius(20)
                    .rotationEffect(.degrees(60))
                    
                    .foregroundColor(.white.opacity(0.3))
                VStack(spacing: 15) {
                    Image("ripa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 20)
                    Text("App MovieList").font(.title).fontWeight(.bold)

                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.85))
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.red, lineWidth: CGFloat(wrongUser))
                        )

                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.85))
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.red, lineWidth: CGFloat(wrongPass))
                        )

                    Button("Login") {
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.red)
                    .cornerRadius(4)

                    NavigationLink(
                        destination: ContentView(),
                        isActive: $showHomeScreen
                    ) {
                        EmptyView()
                    }
                }
            }
        }
    }

}

#Preview {
    LoginView()
}
