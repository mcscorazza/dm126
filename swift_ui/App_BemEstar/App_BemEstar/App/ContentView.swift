//
//  ContentView.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView(.vertical, showIndicators: false) {
                VStack {
                    Features_Grid()
                    CarouselTabView()
                    GoalContainer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
