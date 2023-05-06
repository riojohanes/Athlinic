//
//  CompleteProgramView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 05/05/23.
//

import SwiftUI

struct CompleteProgramView: View {
    let activities: [Activity.Struct] = [
        Activity.Struct(excerciseName: "Bench Press", set: 5, rep: "12, 10, 8, 6, 12", rest: "60"),
        Activity.Struct(excerciseName: "Incline Dumble Press", set: 4, rep: "12, 10, 8, 6", rest: "45-60")
        //        ,
        //        Activity.Struct(excerciseName: "Decline Barbell Bench Press", set: 5, rep: "10, 10, 10, 10", rest: "45-60")
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
                        
                        NavigationLink(destination: ProfileEditView()) {
                            Image("menuIconProfile")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 40)
                        }
                        .navigationBarBackButtonHidden(true)
                        
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                
                VStack{
                    Spacer()
                    //                            .frame(height: 160)
                    
                    //                        Spacer()
                    //                            .frame(height: 100)
                    VStack(alignment: .leading) {
                        
                        ZStack {
                            CardBackgroundComponent()
                            VStack {
                                HStack {
                                    NavigationLink(destination: TodayScheduleView()) {
                                        Image(systemName: "chevron.left")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 11)
                                            .font(.system(size: 24))
                                    }
                                    
                                    Spacer()
                                    Text("Complete Program")
                                        .font(.system(size: 22, weight: .semibold))
                                    
                                }
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .padding(.horizontal, 30)
                                
                                Spacer()
                                
                                VStack {
                                    ScrollView {
                                        VStack {
                                            HStack {
                                                Text("Day 1")
                                                    .font(.system(size: 30, weight: .semibold))
                                                Spacer()
                                                Text("UPPER BODY")
                                                    .font(.system(size: 18, weight: .light))
                                            }
                                            .padding(.horizontal, 30)
                                            
                                            .foregroundColor(.white)
                                            Spacer()
                                            ScrollView {
                                                // Cards
                                                VStack{
                                                    ForEach(activities, id: \.self) { activity in
                                                        ActivityCardComponent(activity: activity)
                                                    }
                                                    
                                                }
                                                .padding(.horizontal)
                                                
                                            }
                                            
                                            Divider()
                                                .background(.white)
                                                .frame(width: 300)
                                                .offset(y: 5)
                                            
                                            //                                                .padding()
                                        }
                                        //                                        .clipShape(RoundedRectangle(cornerRadius: 34))
                                        
                                        VStack {
                                            HStack {
                                                Text("Day 2")
                                                    .font(.system(size: 30, weight: .semibold))
                                                Spacer()
                                                Text("REST")
                                                    .font(.system(size: 18, weight: .light))
                                            }
                                            //                                        .offset(<#T##offset: CGSize##CGSize#>)
                                            //                                        .padding(.vertical)
                                            .padding(.horizontal, 30)
                                            .foregroundColor(.white)
                                            
                                            ScrollView {
                                                // Cards
                                                VStack{
                                                    ForEach(activities, id: \.self) { activity in
                                                        ActivityCardComponent(activity: activity)
                                                    }
                                                    
                                                }
                                                .padding(.horizontal)
                                                
                                            }
                                            
                                            
                                            Divider()
                                                .background(.white)
                                                .frame(width: 300)
                                                .offset(y: 5)
                                            //                                                .padding()
                                        }
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                            }
                            
                            
                            
                            
                            
                            
                        }
                        .frame(height: 590)
                        .clipped()
                    }
                    
                    .offset(y: 5)
                    
                    Spacer()
                        .frame(height: 100)
                }
                .padding(.horizontal)
            }
            //            } // End ScrollView
            
            MainNavigationComponent()
        } // End Z Stack
    }
}

struct CompleteProgramView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteProgramView()
    }
}
