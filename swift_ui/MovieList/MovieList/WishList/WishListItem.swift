//
//  WishListItem.swift
//  MovieList
//
//  Created by user288580 on 12/7/25.
//

import SwiftUI

struct WishListItem: View {
    let movie: MovieType
    var body: some View {
        HStack {
            Image(systemName: "list.bullet.below.rectangle")
                .resizable()
                .scaledToFit()
                .frame(height: 25)
                .foregroundStyle(.orange)
            Image(movie.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(4)
                .frame(height: 40)
                .shadow(color: Color.gray.opacity(0.5), radius: 2, x: 1, y: 1)
                .padding(.horizontal, 5)

            VStack(alignment: .leading, spacing: 4) {
                Text(movie.title)
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    .lineLimit(1)
                HStack {
                    Text(movie.genre)
                        .font(.caption)
                        .foregroundStyle(.gray)
                    Spacer()
                    Text(String(movie.year))
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.gray.opacity(0.25))
            }
        }.padding(.horizontal)
            .padding(.top, 10)
    }
}

#Preview {
    WishListItem(
        movie: MovieType(
            id: 1,
            image: "h_dragao",
            title: "Como Treinar o Seu Dragao",
            year: 2025,
            genre: "Comedia"
        )
    )
}
