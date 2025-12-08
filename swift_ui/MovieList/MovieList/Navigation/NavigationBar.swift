//
//  NavigationBar.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct NavigationBar: View {
    
    @Binding var isLogged: Bool
    @ObservedObject var userManager = UserManager.shared
    
    var body: some View {
        HStack {
            Image("ripa").resizable().scaledToFit().frame(width: 35, height: 35)
            Spacer()
            Text(userManager.currentUser?.username ?? "Visitante")
                .font(.headline)
                .fontWeight(.bold)

            Spacer()
            Menu {
                Button(role: .destructive) {
                    logoutAction()
                } label: {
                    HStack {
                        Text("Logout")
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                    }
                }
            } label: {
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                }
            }

        }.padding(.horizontal, 30)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .foregroundStyle(.gray)
            .background(.black.opacity(0.7))

    }

    private func logoutAction() {
            UserManager.shared.logout()
            withAnimation {
                isLogged = false
            }
        }
}

#Preview {
    NavigationBar(isLogged: .constant(true))
}
