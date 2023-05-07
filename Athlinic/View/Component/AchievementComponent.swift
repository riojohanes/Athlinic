//
//  AchievementComponent.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 05/05/23.
//

import SwiftUI

struct AchievementComponent: View {
    
    @State var isActive = false
    
    let logos: [String] = ["bronze1", "bronze2", "bronze3", "silver1"]
    
        let columns = [
            // flexible 4 columns
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(logos, id: \.self) { logo in
                            Image(logo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80)
                        }
                    }
                }
    }
}

struct AchievementComponent_Previews: PreviewProvider {
    static var previews: some View {
        AchievementComponent()
    }
}
