//
//  BMIResultView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 29/04/23.
//

import SwiftUI
import CoreData

struct BMIResultView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @Binding var genderSelected: Bool

    var bmi: Double
    @State var bmiCategory: String
        
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
//                Text("Your height : \(getHeight() ?? 1.0) Meter")
//                    .foregroundColor(.white)
//                Text("Your weight : \(getWeight() ?? 2.0) Kg")
//                    .foregroundColor(.white)
                Text("You're **\(bmiCategory)**!")
                    .font(.largeTitle)
//                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .padding()
                NavigationLink(destination: TodayScheduleView()) {
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
                .navigationBarBackButtonHidden(true)
//                .padding()
//                .padding(.bottom, 30)
                //                .frame(height: 100)
                
                
            }
            
            
        }
    }
//    private func getHeight() -> Double? {
//        let fetchRequest =
//        NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
//        fetchRequest.fetchLimit = 1
//        do {
//            let result = try viewContext.fetch(fetchRequest)
//            if let profile = result.first as? Profile {
//                return profile.current_height
//            }
//        } catch let error as NSError {
//            print("Could not fetch. \(error), \(error.userInfo)")
//        }
//        return nil
//    }
//
//    private func getWeight() -> Double? {
//        let fetchRequest =
//        NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
//        fetchRequest.fetchLimit = 1
//        do {
//            let result = try viewContext.fetch(fetchRequest)
//            if let profile = result.first as? Profile {
//                return profile.current_weight
//            }
//        } catch let error as NSError {
//            print("Could not fetch. \(error), \(error.userInfo)")
//        }
//        return nil
//    }
}

struct BMIResultView_Previews: PreviewProvider {
    static var previews: some View {
        BMIResultView(genderSelected: .constant(true), bmi: 22.5, bmiCategory: "Underweight")
    }
}
