//
//  CarouselTabView.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import SwiftUI

struct CarouselTabView: View {
    let bannerList: [ServiceType] = carouselMock
    var body: some View {
        TabView {
            ForEach(bannerList) {
                banner in CarouselItemView(banner: banner)
            }
        }
        .frame(width: 340, height: 340)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
