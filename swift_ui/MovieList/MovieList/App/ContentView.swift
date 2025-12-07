//
//  ContentView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    let blueGray = Color(red: 0.275	, green: 0.333, blue: 0.412)
    var body: some View {

        ZStack {
            blueGray.ignoresSafeArea()
            VStack {
                NavigationBar()

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
    ContentView()
}
