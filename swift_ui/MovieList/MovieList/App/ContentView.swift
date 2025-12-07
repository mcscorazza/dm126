//
//  ContentView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var isLogged: Bool
    let blueGray = Color(red: 0.275, green: 0.333, blue: 0.412)
    var body: some View {

        ZStack {
            blueGray.ignoresSafeArea()
            VStack(spacing:0) {
                NavigationBar(isLogged: $isLogged)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HighlightsView()
                        CategoriesView()
                        WishListView()
                    }
                }
            }
        }

    }

    
}

#Preview {
    ContentView(isLogged: .constant(true))
}
