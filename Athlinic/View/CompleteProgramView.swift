//
//  CompleteProgramView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 05/05/23.
//

import SwiftUI

struct CompleteProgramView: View {
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
                        HStack{
                            Spacer()
                            
                            Text("JHON DOE")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                            
                            NavigationLink(destination: ProfileEditView()) {
                                Image("menuIconProfile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 40)
                            }
                            
                        }
                        .padding(.horizontal)
                        Spacer()
                    }
                    
                    VStack{
                        Spacer()
                            .frame(height: 160)

                        Spacer()
                            .frame(height: 100)
                        VStack(alignment: .leading) {
                            
                            ZStack {
                                CardBackgroundComponent()
                                
                                // The Content
                                ScrollView{
                        
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 34))
                            }
                            .frame(height: 290)
                            .clipped()
                        }
                        
                        .offset(y: 5)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
//            } // End ScrollView
            
            MainNavigationComponent()
        } // End Z Stack
    }
}

struct CompleteProgramView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteProgramView()
    }
}
