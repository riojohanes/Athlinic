//
//  BMIResultView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 29/04/23.
//

import SwiftUI

struct BMIResultView: View {
    
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
                Image("maleOverResult")
                    .resizable()
                    .scaledToFit()
                    
            } else if bmiCategory == "Normal" {
                Image("maleNormalResult")
                    .resizable()
                    .scaledToFit()

            } else {
                Image("maleUnderResult")
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
            
            Image("normalTranslucent")
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
                .padding()
                .padding(.bottom, 30)
                //                .frame(height: 100)
                
                
            }
            
            
        }
        
    }
}

struct BMIResultView_Previews: PreviewProvider {
    static var previews: some View {
        BMIResultView(bmi: 22.5, bmiCategory: "Underweight")
    }
}
