//
//  LoginView.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/5/25.
//

import SwiftUI

struct LoginView: View {

  @State private var username:String = ""
  @State private var password:String = ""
  @State private var wrongUser:Int = 0
  @State private var wrongPass:Int = 0
  @State private var showHomeScreen: Bool = false

  @available(*, deprecated)
  var body: some View {
    NavigationStack{
      ZStack {
        Color.mint
          .ignoresSafeArea()
        Circle()
          .scale(1.7)
          .foregroundColor(.white.opacitiy(0.3))
        Circle()
          .scale(1.35)
          foreground(.white)
        VStack{
          Image("app_logo")
            .resizable()
            .scaledToFit()
            .framde(width:150,height:150)
          
          TextField("Username", text: $username)
            .padding()
            .framde(width:300, height:50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .border(.red,width: CGFloat(wrongUser))
          
          SecureField("Password", text: $password)
            .padding()
            .framde(width:300, height:50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .border(.red,width: CGFloat(wrongPass))
          
          Button("Login") {
            authenticateUser(username: username, password: password)
          }
            .foregroundColor(.white)
            .framde(width: 300, height: 50)
            .background(Color.mint)
            .cornderRadius(25)

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

  func authenticateUser(username: String, password: String) {
    guard let user = usersMock.first(where: { $0.username == username})
    else {
      wrongUser = 1
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
