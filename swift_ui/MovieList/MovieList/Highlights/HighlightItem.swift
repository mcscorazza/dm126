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
        
      VStack{
          Image(movie.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(4)
            .fixedSize(horizontal: false, vertical: true)
      }.frame(width: 350)
        
    }
}

#Preview {
    HighlightItem(
        movie: MovieType(
            id: 1,
            image: "dragao" ,
            title: "Como Treinar o Seu Dragao",
            description: "Descricao teste",
            genre: "Comedia"
        )
    )
}
