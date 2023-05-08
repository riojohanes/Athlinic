//
//  RouterView.swift
//  Athlinic
//
//  Created by Rajif Afif on 07/05/23.
//

import SwiftUI

struct RouterView: View {
    
    @State var currentPage = "today-schedule"
    @Binding var bmiCategory: String
    
    var body: some View {
        ZStack {
            VStack {
                
                switch currentPage {
                case "achievement":
                    ProfileAchievementView(bmiCategory: $bmiCategory)
                case "profile":
                    ProfileEditView()
                case "equipments":
                    CompleteProgramView(bmiCategory: $bmiCategory)
                default:
                    TodayScheduleView(bmiCategory: $bmiCategory)
                }
                
            }
            
            if (currentPage != "profile") {
                VStack{
//                    Text("asdasdasd")
                    ProfileButtonComponent()
                        .onTapGesture {
                            currentPage = "profile"
                        }
                    Spacer()
                }
            }
            
            MainNavigationComponent(currentPage: $currentPage)
        }
    }
}

struct RouterView_Previews: PreviewProvider {
    static var previews: some View {
        RouterView(bmiCategory: .constant("underweight"))
    }
}
