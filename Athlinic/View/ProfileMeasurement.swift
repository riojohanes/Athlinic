//
//  ProfileMeasurement.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 28/04/23.
//

import SwiftUI

struct ProfileMeasurement: View {
    
    @State private var genderSelected = false
    @State private var userHeight = ""
    @State private var userWeight = ""
    
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.black, Color("backgroundColor"), Color("backgroundColorBot")],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            
          
            
            if genderSelected {
                Image("maleMeasure")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220)
            } else {
                Image("femaleMeasure")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220)
            }
            
            Image("rectangleMeasurement")
                .resizable()
                .scaledToFit()
            

            
            VStack {
                Text("What's your measurements?")
                    .font(.system(size: 28, weight: .light))
                    .foregroundColor(.white)
                    .padding()
                    .offset(y: -15)
                
                Spacer()
                
                VStack {
                    VStack {
                        Text("Height")
                            .font(.system(size: 28, weight: .light))
                            .foregroundColor(.white)
                            .padding(.bottom, -2)
                        TextField("Height (m)", text: $userHeight)
                            .keyboardType(.decimalPad)
                            .foregroundColor(.black)
                            .font(.system(size: 28, design: .default))
                            .frame(width: 273)
                            .padding(10)
                            .background(Color.white)
                            .opacity(0.8)
                            .cornerRadius(19)
                            .multilineTextAlignment(.center)
                        //                            .offset(y: -85)
                    }
                    .padding()
                    VStack {
                        Text("Weight")
                            .font(.system(size: 28, weight: .light))                            .foregroundColor(.white)
                            .padding(.bottom, -2)

                        TextField("Weight (kg)", text: $userWeight)
                            .keyboardType(.numberPad)
                            .foregroundColor(.black)
                            .font(.system(size: 28, design: .default))
                            .frame(width: 273)
                            .padding(10)
                            .background(Color.white)
                            .opacity(0.8)
                            .cornerRadius(19)
                            .multilineTextAlignment(.center)
                        //                            .offset(y: -85)
                    }
                    
                }
                .offset(y: -65)
                
                
                
                NavigationLink(destination: BMIResultView(bmi: bmi, bmiCategory: bmiCategory)) {
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
    
    var bmi: Double {
            let height = Double(userHeight) ?? 0
            let weight = Double(userWeight) ?? 0
            guard height > 0 && weight > 0 else {
                return 0
            }
            return weight / (height * height)
        }
    
    var bmiCategory: String {
            switch bmi {
            case ..<18.5:
                return "Underweight"
            case 18.5..<25:
                return "Normal"
            default:
                return "Overweight"
            }
        }
    
}




struct ProfileMeasurement_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMeasurement()
    }
}
