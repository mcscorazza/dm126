//
//  CategoriesView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack(spacing: 16) {
            MovieCategoryList(
                title: "Ação",
                movies: moviesMock.filter { $0.genre == "Ação" }
            )
            
            MovieCategoryList(
                title: "Comédia",
                movies: moviesMock.filter { $0.genre == "Comédia" }
            )
            
            MovieCategoryList(
                title: "Drama",
                movies: moviesMock.filter { $0.genre == "Drama" }
            )
        }
        .clipped()
        .frame(width: 395)
        .padding(.bottom, 20)
    }
}
#Preview {
    CategoriesView()
}
