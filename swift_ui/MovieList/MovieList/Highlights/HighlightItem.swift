//
//  HighlightItem.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct HighlightItem: View {
    let movie: MovieType
    
    var body: some View {

            ZStack(alignment: .bottomLeading) {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .frame(width: 350, height: 230)

                LinearGradient(
                    gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.95)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .cornerRadius(8)
                .frame(height: 180)
                .frame(maxHeight: .infinity, alignment: .bottom)
                
                Text(movie.title)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundStyle(.yellow)
                    .multilineTextAlignment(.leading)
                    .padding(12)
                    .padding(.bottom, 16)
                    .shadow(radius: 2)
            }
            .frame(width: 350, height: 230)
            .shadow(color: Color.black.opacity(0.5), radius: 2, x: 3, y: 3)
            .padding(.horizontal, 8)
        }
}

#Preview {
    HighlightItem(
        movie: MovieType(
            id: 1,
            image: "h_dragao" ,
            title: "Como Treinar o Seu Dragao",
            year: 2025,
            genre: "Comedia"
        )
    )
}
