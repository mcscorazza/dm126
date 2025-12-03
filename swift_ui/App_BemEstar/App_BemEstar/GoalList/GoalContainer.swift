//
//  GoalContainer.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct GoalContainer: View {
  
  let goalList: GoalType = goalsMock
  var body: some View {
    VStack(alignment: .leading){
      ForEach(goalList){
        goal in GoalListView(goal:goal)
      }
    }
  }


#Preview {	
    GoalContainer()
}
	