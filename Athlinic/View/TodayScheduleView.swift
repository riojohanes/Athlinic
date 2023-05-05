//
//  TodayScheduleView.swift
//  Athlinic
//
//  Created by Rajif Afif on 03/05/23.
//

import SwiftUI
import CoreData

struct TodayScheduleView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var selection = 0
    @State var agreeToTerms = false
    @State var name = "Nama Saya"
    
    @State var activities: [Activity.Struct] = []
    
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
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Today's Quest")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .semibold))
                                
                                NavigationLink(destination: CompleteProgramView() /* Your destination view */) {
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
                                .navigationBarBackButtonHidden(true)

                                .frame(alignment: .leading)
                            }
                            
                            ZStack {
                                CardBackgroundComponent()
                                
                                // The Content
                                ScrollView{
                                    VStack {
                                        // Cards
                                        VStack{
                                            ForEach(activities, id: \.self) { activity in
                                                ActivityCardComponent(activity: activity)
                                            }
                                        }
                                        .offset(y: 6)
                                        .padding()
                                    }
                                    .onAppear{
                                        // Fill Data
                                        activities = [
                                                Activity.Struct(excerciseName: "Bench Press", set: 5, rep: "12, 10, 8, 6, 12", rest: "60"),
                                                Activity.Struct(excerciseName: "Incline Dumble Press", set: 4, rep: "12, 10, 8, 6", rest: "45-60"),
                                                Activity.Struct(excerciseName: "Decline Barbell Bench Press", set: 5, rep: "10, 10, 10, 10", rest: "45-60")
                                        ]
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
    
    private func getName() -> String? {
        let fetchRequest =
            NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
        fetchRequest.fetchLimit = 1
        do {
            let result = try viewContext.fetch(fetchRequest)
            if let profile = result.first as? Profile {
                return profile.name
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        return nil
    }
}

struct TodayScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        TodayScheduleView()
    }
}

struct ActivityCardView: View {
    let activity: Activity.Struct
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
