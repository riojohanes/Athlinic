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
                colors: [.black, CustomColor.topColor, CustomColor.botColor],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
                
            ScrollView{
                ZStack{
                    VStack{
                        Image("maleHomeDisplay")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180)
                        Spacer()
                    }
                    
                    VStack{
                        VStack(alignment: .trailing){
                            Text("Hey")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                            Text("Jhon!")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                        }
                        .padding(30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                            .frame(height: 100)
                        
                        VStack(alignment: .leading){
                            Text("You're,")
                                .foregroundColor(.white)
                            Text("Overweight!")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding(30)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        ZStack {
                            // The Rounded Box
                            RoundedRectangle(cornerRadius: 10)
                                // Gradient Color
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorPalette.gradientStart, ColorPalette.gradientEnd]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 0) // Rounded border with white color and 2pt width
                                )
                            
                            VStack {
                                HStack{
                                    Text("Today's Quest")
                                        .font(.system(size: 30, weight: .bold))
                                    Spacer()
                                    Text("UPPER BODY")
                                }
                                .padding(.init(top: 15, leading: 15, bottom: 0, trailing: 15))
                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .background(Color.red)
                                
                                VStack{
                                    ForEach(activities, id: \.self) { activity in
                                        ActivityCardView(activity: activity, isChecked: false)
                                    }
                                }
                                .padding()
                                
                                NavigationLink(destination: ProfileGenderScreen()) {
                                    HStack{
                                        Text("See complete program")
                                            .foregroundColor(.primary)
                                        Spacer()
                                        Text(">>")
                                            .foregroundColor(.primary)
                                    }
                                    .padding(.init(top: 0, leading: 15, bottom: 15, trailing: 15))
                                }
                            }
//                            .background(Color.red)
                        }
//                        .background(Color.red)
                        
                        Spacer()
                    }
                }
            }
        }
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
            Image("menuIconProfile")
                .resizable()
                .scaledToFill()
                .frame(width: 70)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(activity.excerciseName)
                    .font(.headline)
                
                Text("\(activity.set) set (\(String(activity.rep)) rep")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text("\(activity.rest)s rest")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            ActivityCheckbox(isChecked: $isChecked)
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
}
