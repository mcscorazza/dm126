//
//  HighlightsView.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct HighlightsView: View {
    let highlightList: [MovieType] = highlightsMock
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {

            Text("Destaques")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.red)
                .padding(.horizontal)
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(.white.opacity(0.5))
                .padding(.horizontal)
                .padding(.bottom, 4)

            TabView {
                ForEach(highlightList) { movie in
                    HighlightItem(movie: movie)
                }
            }
            .frame(height: 200)
            .tabViewStyle(.page(indexDisplayMode: .always))
            
        }.padding(.top,20)
    }
}

#Preview {
    HighlightsView()
}
