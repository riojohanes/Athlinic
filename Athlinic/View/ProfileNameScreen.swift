//
//  ProfileNameScreen.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 27/04/23.
//

import SwiftUI

struct ProfileNameScreen: View {
    @State private var userName = ""
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.black, CustomColor.topColor, CustomColor.botColor],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            VStack {
                Text("How we should call you?")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(.white)
                    .padding()
                
                
                ZStack{
                    
                    LinearGradient(gradient: Gradient(colors: [.clear, CustomColor.botColor, CustomColor.botColor]), startPoint: .top, endPoint: .bottom)
                        .zIndex(1)
                        .offset(y: 190)

                    
                    Image("nameFigureSet")
                        .resizable()
                        .scaledToFit()
                }
                
//                .background(.white)
                
                
                VStack {
                    TextField("Your Name", text: $userName)
                        .foregroundColor(.white)
                        .font(.system(size: 30, design: .default))
                        .frame(width: 273)
                        .padding(20)
                        .background(Color.clear)
                        .cornerRadius(19)
                        .multilineTextAlignment(.center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 19)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .offset(y: -85)
                    
                    
                    NavigationLink(destination: ProfileGenderScreen()) {
                        Text("NEXT")
                            .font(.system(size: 24, weight: .semibold))
                            .frame(width: 180, height: 52)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                        //                            .padding(.bottom, 60)
                            .shadow(color: CustomColor.tintShadow, radius: 10, x: -3, y: -5)
                            .shadow(color: .black, radius: 12, x: 3, y: 5)
                    }
                    
                }
                .padding(.bottom, 80)
                .frame(height: 100)
            }
        }
    }
}

struct ProfileNameScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNameScreen()
    }
}
