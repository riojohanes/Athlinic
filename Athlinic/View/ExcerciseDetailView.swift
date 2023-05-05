//
//  ExcerciseDetailView.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI

struct ExcerciseDetailView: View {
    @State var name: String = "Name"
    
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
                            .frame(height: 100)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Today's Quest")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .semibold))
                                
                                NavigationLink(destination: ProfileEditView() /* Your destination view */) {
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
                                .frame(alignment: .leading)
                            }
                            
                            ZStack {
                                CardBackgroundComponent()
                                
                                // The Content
                                ScrollView{
                                    VStack {
                                        // Cards
                                        VStack{
//                                            ForEach(activities, id: \.self) { activity in
//                                                ActivityCardView(activity: activity, isChecked: false)
//                                            }
                                        }
                                        .offset(y: 6)
                                        .padding()
                                    }
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

struct ExcerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExcerciseDetailView()
    }
}
