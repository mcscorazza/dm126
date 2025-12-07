//
//  MovieListApp.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

@main
struct MovieListApp: App {
    @State private var isUserLoggedIn: Bool = false
    var body: some Scene {
        WindowGroup {
            if isUserLoggedIn {
                ContentView(isLogged: $isUserLoggedIn)
                    .transition(.opacity)
            } else {
                LoginView(isLogged: $isUserLoggedIn)
            }
        }
    }
}
