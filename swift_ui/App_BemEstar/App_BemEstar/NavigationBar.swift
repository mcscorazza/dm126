//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by user288580 on 12/3/25.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Button("Marcos Corazza") {}	
                .font(.headline)
                .fontWeight(.bold)
            Button(action: {}) {
                Image(systemName: "person.badge.plus.fill")
            }
        }
    }
}

#Preview {
    NavigationBar()
}
	
