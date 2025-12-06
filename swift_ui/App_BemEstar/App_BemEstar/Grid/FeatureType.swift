//
//  FeatureType.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct FeatureType: View {

  let service: ServiceType

  var body: some View {
    VStack{
      Image(service.imagem)
          .resizable()
          .scaledToFit()
          .cornerRadius(4)
          .fixedSize(horizontal: false, vertical: true)
      Text(service.nome)
          .font(.system(size:12))
    }.frame(width: 110, height: 100)
  }
}

#Preview {
    FeatureType(service: ServiceType(id: 1, nome: "Exercitar", imagem: "exercicio") )
}
	
