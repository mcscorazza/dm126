//
//  CarouselItemView.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct CarouselItemView: View {

  let banner:ServiceType  
  var body: some View {
    Imagem(banner.imagem)
      .resizable()
      .scaledToFit()
      .cornerRadius(8)
  }
}

#Preview {	
    CarouselItemView(banner: ServiceType(id: 1, nome: "", imagem: "motivacional1"))
}
	