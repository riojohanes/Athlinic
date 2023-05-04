//
//  ProfileGenderScreen.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 27/04/23.
//

import SwiftUI

struct ProfileGenderScreen: View {
    @State private var userName = ""
    @State var isMaleSelected = true
    @State private var isTriangleButtonPressed = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.black, Color("backgroundColor"), Color("backgroundColorBot")],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            VStack {
                Text("What's your gender?")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(.white)
                    .offset(y: -15)
                    .padding()
                
                
                ZStack{
                    
                    LinearGradient(gradient: Gradient(colors: [.clear, Color("backgroundColorBot"), Color("backgroundColorBot")]), startPoint: .top, endPoint: .bottom)
                        .zIndex(1)
                        .offset(y: 230)
                    
                    if isMaleSelected {
                        Text("Male")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: 220)
                            .zIndex(2)
                        
                        Image("male")
                            .resizable()
                            .scaledToFit()
                    } else {
                        Text("Female")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.white)
                            .offset(y: 220)
                            .zIndex(2)
                        
                        Image("female")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(isMaleSelected ? Color("maleBorder") : Color("femaleBorder"), lineWidth: 5)
                        .frame(width: 307, height: 507)
                        .zIndex(2)
                        .overlay(
                            Triangle()
                                .fill(Color.white)
                                .frame(width: 20, height: 20)
                                .offset(x: 0, y: -125)
                                .rotationEffect(isTriangleButtonPressed ? Angle(degrees: 180) : Angle(degrees: 0))
                                .rotationEffect(.degrees(90))
                                .onTapGesture {
                                    isTriangleButtonPressed.toggle()
                                    isMaleSelected.toggle()
                                }
                        )
                }
                
                //                .background(.white)
                
                
                VStack {
                    NavigationLink(destination: ProfileMeasurement(genderSelected: $isMaleSelected)) {
                        Text("NEXT")
                            .font(.system(size: 24, weight: .semibold))
                            .frame(width: 180, height: 52)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                        //                            .padding(.bottom, 60)
                            .shadow(color: Color("tintShadowButton"), radius: 10, x: -3, y: -5)
                            .shadow(color: .black, radius: 12, x: 3, y: 5)
                    }
                    
                }
                //                .padding(.bottom)
//                .frame(height: 100)
            }
        }
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct ProfileGenderScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileGenderScreen()
    }
}
