//
//  ProfileAchievementView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 04/05/23.
//

import SwiftUI

struct ProfileAchievementView: View {
    
    @State var name = "Nama Saya"
    @State private var isAchievementClicked = true
    @State private var isTrophyClicked = false
    
    @Binding var bmiCategory: String
    @State var selectedAchievement: Achievement?
    
    let columns = [
        // flexible 4 columns
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
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
                                            ProfileButtonComponent(name: $name)
                    
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
                    
                    VStack(alignment: .trailing){
                        Text("You're")
                            .foregroundColor(.white)
                            .font(.system(size: 28))
                        Text("\(bmiCategory)")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 28))
                    }
                    .offset(x: -190)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    Spacer()
                    //                            .frame(height: 100)
                    VStack(alignment: .leading) {
                        if isAchievementClicked {
                            HStack {
                                Text("Achievement")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .semibold))
                                
                                //                                NavigationLink(destination: /* Your destination view */ ){
                                HStack {
                                    Image(systemName: "chevron.right")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 11)
                                        .font(.system(size: 24))
                                        .foregroundColor(.white)
                                    
                                }
                                .padding(.horizontal, 5)
                                .onTapGesture {
                                    isAchievementClicked.toggle()
                                }
                                //                                        }
                                //                                .navigationBarBackButtonHidden(true)
                                //                                .frame(alignment: .leading)
                            }
                            .padding(.horizontal)
                            
                            ZStack {
                                CardBackgroundComponent()
                                
                                VStack {
                                    AchievementComponent()
                                        .padding()
                                }
                                // The Content
                            }
                            .frame(height: 200)
                            .clipped()
                        }
                        else {
                           HStack {
                                //                                NavigationLink(destination: /* Your destination view */ ){
                                HStack {
                                    Image(systemName: "chevron.left")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 11)
                                        .font(.system(size: 24))
                                        .foregroundColor(.white)
                                    
                                }
                                .padding(.horizontal, 5)
                                .onTapGesture {
                                    isAchievementClicked.toggle()
                                }
                               Text("Achievement")
                                   .foregroundColor(.white)
                                   .font(.system(size: 30, weight: .semibold))
                                //                                        }
                                //                                .navigationBarBackButtonHidden(true)
                                //                                .frame(alignment: .leading)
                            }
                            
                        ZStack {
                            CardBackgroundComponent()
                            
                            VStack {
                                ScrollView {
                                    LazyVGrid(columns: columns, spacing: 10) {
                                        ForEach(Array(achievements.enumerated()), id: \.1.name) { index, achievement in
                                                        Image(achievement.imageName)
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 80)
                                                            .opacity(index >= 5 ? 0.3 : 1.0)
                                                    }
                                    }
                                }
                                
                                .padding()
                            }
                            // The Content
                        }
                        .frame(height: 290)
                        .clipped()
                    }
                    }
                    
                    Spacer()
                        .frame(height: 100)
                }
                .padding(.horizontal)
            }
            //            } // End ScrollView
            
            MainNavigationComponent()
        }
        
    }
}

struct ProfileAchievementView_Previews: PreviewProvider {
    static var previews: some View {
        //        ProfileAchievementView(bmiCategory: .constant("underweight"))
        ProfileAchievementView(bmiCategory: .constant("Normal"))
        
    }
}
