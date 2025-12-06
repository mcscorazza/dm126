//
//  GoalContainer.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct GoalContainer: View {
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(goalsMock){
                goal in GoalListView(goal:goal)
            }
        }.padding(.top,20)
    }
 
}
#Preview {
    GoalContainer()
}
	
