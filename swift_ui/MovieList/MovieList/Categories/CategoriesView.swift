//
//  CategoriesView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        MovieCategoryList(title: "Drama", movies: moviesMock)
        MovieCategoryList(title: "Comedia", movies: moviesMock)
        MovieCategoryList(title: "Suspense", movies: moviesMock)
    }
}

#Preview {
    CategoriesView()
}
