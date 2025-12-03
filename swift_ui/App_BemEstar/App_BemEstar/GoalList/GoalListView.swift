//
//  GoalListView.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct GoalListView: View {
  let goal: GoalType
  var body: some View {
    HStack{
      Image(systemName: goal.icone)
        .font(.largeTitle)
      VStack(alignment: .leading){
        Text(goal.titulo).font(.headline).fontWeight(.bold)
        Text(goal.descricao).font(.caption)
      }
    }.foregroundStyle(.blue)
  }

#Preview {	
    GoalListView(goal: GoalType(id:1, icone: "moon.zzz.fill", titulo: "Descanso", descricao: "Dormir 8h por noite"))
}
	