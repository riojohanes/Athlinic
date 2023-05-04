//
//  BMIResultView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 29/04/23.
//

import SwiftUI

struct BMIResultView: View {
    
    @Binding var genderSelected: Bool

    var bmi: Double
    var bmiCategory: String
        
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.black, Color("backgroundColor"), Color("backgroundColorBot")],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            
            if bmiCategory == "Overweight" {
                Image("\(genderSelected ? "maleOverResult" : "femaleOverResult")")
                    .resizable()
                    .scaledToFit()
                    
            } else if bmiCategory == "Normal" {
                Image("\(genderSelected ? "maleNormalResult" : "femaleNormalResult")")
                    .resizable()
                    .scaledToFit()

            } else {
                Image("\(genderSelected ? "maleUnderResult" : "femaleUnderResult")")
                    .resizable()
                    .scaledToFit()
            }
                

            
            //            if genderSelected {
            //                Image("maleMeasure")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 220)
            //            } else {
            //                Image("femaleMeasure")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 220)
            //            }
            
            Image("\(bmiCategory == "Normal" ? "normalTranslucent" : "overUnderTranslucent")")
                .resizable()
                .scaledToFit()
                .offset(y: 150)
            
            
            
            
            VStack {
                Spacer()
                Text("You're **\(bmiCategory)**!")
                    .font(.largeTitle)
//                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .padding()
                NavigationLink(destination: ProfileGenderScreen()) {
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
//                .padding()
//                .padding(.bottom, 30)
                //                .frame(height: 100)
                
                
            }
            
            
        }
        
    }
}

struct BMIResultView_Previews: PreviewProvider {
    static var previews: some View {
        BMIResultView(genderSelected: .constant(true), bmi: 22.5, bmiCategory: "Underweight")
    }
}
