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
            Text("Marcos Corazza").font(.headline).fontWeight(.bold)
            Image(systemName: "chevron.down")
        }.foregroundStyle(.red)    }
}

#Preview {
    NavigationBar()
}
