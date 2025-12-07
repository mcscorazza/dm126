//
//  NavigationBar.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Image("ripa").resizable().scaledToFit().frame(width: 35, height: 35)
            Spacer()
            HStack {
                Text("Marcos Corazza").font(.headline).fontWeight(.bold)
                Image(systemName: "chevron.down")
            }
            Spacer()
            Image(systemName: "line.horizontal.3").font(.title)
        }.padding(.horizontal,30)
            .padding(.vertical,5)
            .frame(maxWidth: .infinity)
            
        .foregroundStyle(.red)
        .background(.black.opacity(0.7))
    }
}

#Preview {
    NavigationBar()
}
