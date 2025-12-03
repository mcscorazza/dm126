//
//  Features_Grid.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct Features_Grid: View {

  var body: some View {
    LazyHGrid(rows: [
      GridItem(.fixed(100)),
      GridItem(.fixed(100)),
      GridItem(.fixed(100))
    ]) {
      ForEach(servicesMock) {
        servce in Text(service.nome)
      }
    }
  }
}

#Preview {
    Features_Grid()
}
	
