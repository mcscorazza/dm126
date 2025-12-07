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
                .foregroundStyle(.orange.opacity(0.8))
                .padding(.horizontal)
            
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(.orange.opacity(0.5))
                .padding(.horizontal)
                .padding(.bottom, 4)

            TabView {
                ForEach(highlightList) { movie in
                    HighlightItem(movie: movie)
                }
            }
            .frame(height: 240)
            .padding(.top,-10)
            .tabViewStyle(.page(indexDisplayMode: .always))
            
        }
        .frame(width: 395)
        .padding(.top,10)
        
    }
}

#Preview {
    HighlightsView()
}
