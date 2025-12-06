//
//  MovieCategoryList.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
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
                .foregroundStyle(.orange)
                .padding(.horizontal)
                .padding(.bottom, -5)
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.orange.opacity(0.5))
                .padding(.horizontal)
                .padding(.bottom, 4)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(movies) { movie in
                        MovieCard(movie: movie)
                    }
                }
                .frame(height: 165)
                .padding(.horizontal)
                .padding(.top, -5)
                .clipped()
            }
        }
    }
}

#Preview {
    MovieCategoryList(title: "Teste", movies:[MovieType(id: 1, image: "john_wick", title: "Teste", year: 2000, genre: "Teste")])
}
