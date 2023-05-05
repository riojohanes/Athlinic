//
//  ProfileEditView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 04/05/23.
//

import SwiftUI

struct ProfileEditView: View {
    
    @State private var isUpdatingProfile = true
    @State private var profHeight = "180"
    @State private var profWeight = "75"
    
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.black],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            
            ZStack{
                VStack{
                    HStack(alignment: .center){
                        Text("JHON DOE")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .light))

                    }
                    .padding(.horizontal)
                    
                    Image("maleProfileDisplay")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 400)
                        .offset(y: 30)
//                    Spacer()
                }
                
                VStack{
                    Spacer()
                        .frame(height: 250)
                    ZStack(alignment: .leading) {
                        CardBackgroundComponent()
                        if isUpdatingProfile {
                            
                            VStack(alignment: .leading) {
                                Spacer()
                                VStack(alignment: .leading) {
                                    Text("GENDER")
                                        .font(.system(size: 21, weight: .medium))
                                        .foregroundColor(.white)
                                    Text("Male")
                                        .font(.system(size: 49, weight: .semibold))
                                        .foregroundColor(.white)
                                }
                                .offset(y: -10)
                                
                                Spacer()
                                VStack(alignment: .leading) {
                                    //                                Spacer()
                                    Text("WEIGHT/HEIGHT")
                                        .font(.system(size: 21, weight: .medium))
                                    //                                Spacer()
                                    Text("75/180")
                                        .font(.system(size: 60, weight: .semibold))
                                    //                                Spacer()
                                }
                                .foregroundColor(.white)
                                if #available(iOS 15.0, *) {
                                    Button("UPDATE") {
                                        isUpdatingProfile.toggle()
                                    }
                                    .font(.system(size: 21, weight: .light))
                                    .frame(width: 120)
                                    .padding(.vertical, 5)
                                    .foregroundColor(.black)
                                    .background(ColorPalette.updateButton)
                                    .cornerRadius(16)
                                    .offset(y: -15)
                                    
                                } else {
                                    // Fallback on earlier versions
                                }
                            }
                            .padding()
                        }
                        else {
                            VStack(alignment: .leading){
                                HStack {
                                    if #available(iOS 15.0, *) {
                                        Button("DONE") {
                                            isUpdatingProfile.toggle()
                                        }
                                        .font(.system(size: 21, weight: .light))
                                        .frame(width: 90)
                                        .padding(.vertical, 3)
                                        .foregroundColor(.black)
                                        .background(ColorPalette.doneButton)
                                        .cornerRadius(16)
//                                        .offset(y: -15)
                                        
                                    } else {
                                        // Fallback on earlier versions
                                    }
                                    Spacer()
                                    Text("Update Profile")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .semibold))
                                    
                                }
                                .padding()
                                
                                VStack(alignment: .leading) {
                                    Text("WEIGHT")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .medium))
                                    
                                    TextField("Your Weight", text: $profWeight)
                                        .foregroundColor(.white)
                                        .padding(12)
                                        .font(.system(size: 22, weight: .semibold))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.white, lineWidth: 2)
                                        )
                                }
                                .padding(.horizontal)
                                
                                VStack(alignment: .leading) {
                                    Text("HEIGHT")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .medium))
                                    
                                    TextField("Your Height", text: $profHeight)
                                        .foregroundColor(.white)
                                        .padding(12)
                                        .font(.system(size: 22, weight: .semibold))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.white, lineWidth: 2)
                                        )
                                }
                                .padding()
                                
                            }
                        }
                        
                    }
                    .frame(height: 320)
                    .clipped()
                    
                }
                .padding(.horizontal, 20)
            }
            .navigationBarBackButtonHidden(true)
            //            } // End ScrollView
            
            MainNavigationComponent()
        }
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView()
    }
}
