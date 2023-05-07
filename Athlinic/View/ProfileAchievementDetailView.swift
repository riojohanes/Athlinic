//
//  ProfileAchievementDetailView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 07/05/23.
//

import SwiftUI

struct ProfileAchievementDetailView: View {
    let achievement: Achievement
    
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [ColorPalette.backProfGratdientStart, ColorPalette.backProfGratdientEnd],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            
            //            ScrollView{
            ZStack{
                VStack{
                    //                        ProfileButtonComponent(name: $name)
                    
                    Image("maleHomeDisplay")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 380)
                        .offset(x: 50)
                    Spacer()
                }
                
                VStack{
                    Spacer()
                        .frame(height: 160)
                    
                    Spacer()
                    VStack(alignment: .leading) {
                        
                        
                        //                            if isAchievementClicked {
                        //                                ZStack {
                        //                                    CardBackgroundComponent()
                        //
                        //                                    VStack {
                        //                                            AchievementComponent()
                        //                                            .padding()
                        //                                    }
                        //                                    // The Content
                        //                                }
                        //                                .frame(height: 290)
                        //                                .clipped()
                        //                            }
                        
                        ZStack {
                            CardBackgroundComponent()
                            
                                .padding(.horizontal, 5)
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
                            }.foregroundColor(.white)

                            
                            
                        }
                        .frame(height: 230)
                    }
                    
                    Spacer()
                        .frame(height: 100)
                }
                .padding(.horizontal)
            }
            MainNavigationComponent()
        }
    }
}

struct ProfileAchievementDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAchievementDetailView(achievement: achievements[0])
    }
}
