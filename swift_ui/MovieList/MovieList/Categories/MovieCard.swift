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
        VStack{
            Image(movie.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(4)
                .frame(height: 130)
                .shadow(color: Color.white.opacity(0.5), radius: 2, x: 1, y: 1)
            Text(movie.title)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .frame(maxWidth: 90)
        }
    }
}

#Preview {
    MovieCard(
        movie: MovieType(id: 1, image: "free_guy", title: "Free Guy", year: 2025, genre: "")
    )
}
