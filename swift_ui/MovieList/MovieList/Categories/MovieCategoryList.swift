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
                .font(.headline)
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.top, 10)
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(.white.opacity(0.5))
                .padding(.horizontal)
                .padding(.bottom, 4)

            ScrollView(.horizontal, showsIndicators: false) {

                LazyHStack(spacing: 15) {

                    ForEach(movies) { movie in
                        MovieCard(movie: movie)
                    }

                }
                .padding(.horizontal)
            }
        }
    }
}

//#Preview {
//    MovieCategoryList()
//}
