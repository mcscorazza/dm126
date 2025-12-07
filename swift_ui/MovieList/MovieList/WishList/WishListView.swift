//
//  WishListView.swift
//  MovieList
//
//  Created by user288580 on 12/7/25.
//

import SwiftUI

struct WishListView: View {
    let wishList: [MovieType] = wishListMock
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Lista para assistir:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.orange)
                .padding(.horizontal)

            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.orange.opacity(0.5))
                .padding(.horizontal)
                .padding(.bottom, 4)
            ForEach(wishList) { movie in
                WishListItem(movie: movie)
            }

        }
        .frame(width: 395)
        .padding(.top, 10)
    }
}

#Preview {
    WishListView()
}
