//
//  ContentView.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userManager: UserManager
    
    var body: some View {
        VStack {
            NavigationBar(userManager: userManager)
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Features_Grid()
                    CarouselTabView()
                    GoalContainer()
                }
            }
        }
    }
}

#Preview {
    ContentView(userManager: UserManager())
}
