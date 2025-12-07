//
//  ContentView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
            Color.white.opacity(0.9).ignoresSafeArea()
            VStack {
                NavigationBar()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HighlightsView()
                        CategoriesView()
                        //WishList()
                    }.padding(.horizontal)
                }
            }
        }

    }
}

#Preview {
    ContentView()
}
