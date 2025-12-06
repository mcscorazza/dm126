//
//  MovieCard.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct MovieCard: View {
    let movie:MovieType
    var body: some View {
        Image(movie.image)
              .resizable()
              .scaledToFit()
              .cornerRadius(8)
              .frame(height: 120)
    }
}

#Preview {
    MovieCard(
        movie: MovieType(id: 1, image: "dragao_v", title: "", description: "", genre: "")
    )
}
