//
//  DetailAchievementComponent.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 06/05/23.
//

import SwiftUI

struct DetailAchievementComponent: View {
    let achievement: Achievement

    var body: some View {
        HStack {
            Image(achievement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150)
            
            VStack(alignment: .leading){
                Text(achievement.name)
                    .font(.system(size: 22, weight: .bold))
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                Text(achievement.description)
                    .font(.system(size: 18, weight: .medium))
                    .padding(.horizontal)
            }
//            .padding()
        }
        .padding()
    }
}

struct DetailAchievementComponent_Previews: PreviewProvider {
    static var previews: some View {
        DetailAchievementComponent(achievement: achievements[0])
    }
}
