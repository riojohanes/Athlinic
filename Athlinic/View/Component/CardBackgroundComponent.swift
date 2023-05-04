//
//  CardBackgroundComponent.swift
//  Athlinic
//
//  Created by Rajif Afif on 04/05/23.
//

import SwiftUI

struct CardBackgroundComponent: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 34)
            // Gradient Color
            .fill(LinearGradient(gradient: Gradient(colors: [ColorPalette.gradientStart, ColorPalette.gradientEnd.opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .overlay(
                RoundedRectangle(cornerRadius: 34)
                    .stroke(ColorPalette.cardBorder, lineWidth: 2) // Rounded border with white color and 2pt width
                    .shadow(color: Color.black.opacity(1), radius: 10, x: 0, y: 0)
//                                        .mask(
//                                            RoundedRectangle(cornerRadius: 25)
//                                                .fill(Color.white)
//                                                .padding(4)
//                                        )
            )
    }
}

struct CardBackgroundComponent_Previews: PreviewProvider {
    static var previews: some View {
        CardBackgroundComponent()
    }
}
