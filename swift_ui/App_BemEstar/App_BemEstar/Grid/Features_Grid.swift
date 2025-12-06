//
//  Features_Grid.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct Features_Grid: View {
    
    var gridLayout:[GridItem] { return
        Array(repeating:
                GridItem(.flexible()), count: 2)
    }
    	
  var body: some View {
      LazyHGrid(rows: gridLayout) {
      ForEach(servicesMock) {
          service in FeatureType(service:service)
      }
      }.frame(height:220)
          .padding(.horizontal,10)
          .padding(.top,10)
  }
}

#Preview {	
    Features_Grid()
}
	
