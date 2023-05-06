//
//  ProfileAchievementView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 04/05/23.
//

import SwiftUI

struct ProfileAchievementView: View {
    
    @State var name = "Nama Saya"
    @State private var isAchievementClicked = false
    @State private var isTrophyClicked = false

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
                        
                        VStack(alignment: .trailing){
                            Text("You're")
                                .foregroundColor(.white)
                                .font(.system(size: 28))
                            Text("Overweight")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                        }
                        .offset(x: -190)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        Spacer()
//                            .frame(height: 100)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Achievement")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .semibold))
                                
                                NavigationLink(destination: CompleteProgramView() /* Your destination view */) {
                                            HStack {
                                                Image(systemName: "chevron.right")
                                                    .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 11)
                                                        .font(.system(size: 24))
                                                    .foregroundColor(.white)
                                                
                                            }
                                            .padding(.horizontal, 5)
                                        }
                                .navigationBarBackButtonHidden(true)

                                .frame(alignment: .leading)
                            }
                            .padding(.horizontal)
                            
                            if isAchievementClicked {
                                
                            }
                            ZStack {
                                CardBackgroundComponent()
                                
                                VStack {
                                        AchievementComponent()
                                        .padding()
                                }
                                // The Content
                                                            }
                            .frame(height: 290)
                            .clipped()
                        }
                        
                        Spacer()
                            .frame(height: 100)
                    }
                    .padding(.horizontal)
                }
//            } // End ScrollView
            
            MainNavigationComponent()
        }    }
}

struct ProfileAchievementView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAchievementView()
    }
}
