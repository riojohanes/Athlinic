//
//  TodayScheduleView.swift
//  Athlinic
//
//  Created by Rajif Afif on 03/05/23.
//

import SwiftUI

struct TodayScheduleView: View {
    
    @State var selection = 0
    @State var agreeToTerms = false
    
    let activities: [Activity] = [
        Activity(excerciseName: "Bench Press", set: 5, rep: "12, 10, 8, 6, 12", rest: "60"),
        Activity(excerciseName: "Incline Dumble Press", set: 4, rep: "12, 10, 8, 6", rest: "45-60"),
        Activity(excerciseName: "Decline Barbell Bench Press", set: 5, rep: "10, 10, 10, 10", rest: "45-60")
    ]
    
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
                            Image("menuIconProfile")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 40)
                        }
                        .padding(.horizontal)
                        
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
                            .frame(height: 100)
                        Text("Today's Quest")
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .semibold))
                        
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ZStack {
                            CardBackgroundComponent()
                            
                            // The Content
                            ScrollView{
                                VStack {
                                    // Cards
                                    VStack{
                                        ForEach(activities, id: \.self) { activity in
                                            ActivityCardView(activity: activity, isChecked: false)
                                        }
                                    }
                                    .offset(y: 6)
                                    .padding()
                                }
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 34))
                        }
                        .frame(height: 290)
                        .clipped()
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
//            } // End ScrollView
            
            MainNavigationComponent()
        } // End Z Stack
    }
}

struct TodayScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        TodayScheduleView()
    }
}



// ------------------------------ Card ------------------------------------
struct Activity: Identifiable, Hashable {
    var id = UUID()
    var excerciseName: String
    var set: Int
    var rep: String
    var rest: String
}

struct ActivityCardView: View {
    let activity: Activity
    @State var isChecked: Bool
    
    var body: some View {
        HStack(spacing: 15) {
            ZStack{
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [ColorPalette.iconGradientEnd, ColorPalette.iconGradientStart]),
                            center: .center,
                            startRadius: 50,
                            endRadius: 0
                        )
                    )
                Image("menuIconEquipment")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
            }
            .frame(width: 55)
//            Image("menuIconProfile")
//                .resizable()
//                .scaledToFill()
//                .frame(width: 70)
//                .clipped()
            
            VStack(alignment: .leading) {
                Text(activity.excerciseName)
                    .font(.headline)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                HStack{
                    VStack(alignment: .leading){
                        Text("\(activity.set) set (\(String(activity.rep)) rep")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        
                        Text("\(activity.rest)s rest")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            
                    }
                    Spacer()
                    ActivityCheckbox(isChecked: $isChecked)
                        .offset(y: -9)
                }
            }

            
        }
        .padding(10)
        .background(ColorPalette.cardBackground)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
    
}
