//
//  MovieCategoryList.swift
//  App_MovieList
//
//  Created by Marcos Corazza on 12/6/25.
//

import SwiftUI

struct MovieCategoryList: View {
    let title: String
    let movies: [MovieType]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title3)
                .bold()
                .foregroundStyle(.white.opacity(0.5))
                .padding(.horizontal)
                .padding(.bottom, -5)
                .padding(.top, 10)
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.white.opacity(0.5))
                .padding(.horizontal)
                .padding(.bottom, 4)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(movies) { movie in
                        MovieCard(movie: movie)
                    }
                }
                .frame(height: 165)
                .padding(.top, -5)
            }.padding(.horizontal)
        }
        .background(.black.opacity(0.15))
    }
}

#Preview {
    MovieCategoryList(title: "Teste", movies:[MovieType(id: 1, image: "john_wick", title: "Teste", year: 2000, genre: "Teste")])
}
