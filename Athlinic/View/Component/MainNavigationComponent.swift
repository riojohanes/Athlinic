//
//  MainNavigationComponent.swift
//  Athlinic
//
//  Created by Rajif Afif on 03/05/23.
//

import SwiftUI

struct MainNavigationComponent: View {
    
    @State var selection = 0
    
    var body: some View {
        if #available(iOS 16.0, *) {
            TabView(selection: $selection) {
                // First Menu Item
                NavigationStack {
                        TodayScheduleView()
                }
                .tabItem {
                    Image("menuIconCalendar")
                }
                .tag(0)
                
                // Second Menu Item
                NavigationStack {
                    List {
                        Text("Home Content 2")
                            .frame(height: 700)
                    }
                    .navigationTitle("Home Title 2")
                }
                .tabItem {
                    Image("menuIconCalendar")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .aspectRatio(contentMode: .fit)
                    Text("Equipment")
                }
                .tag(1)
                
                // Third Menu Item
                NavigationStack {
                    List {
                        Text("Home Content 2")
                            .frame(height: 500)
                    }
                    .navigationTitle("Home Title")
                }
                .tabItem {
                    Image("menuIconCalendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                    Text("Achievement")
                }
                .tag(2)
                
                // Fourth Menu Item
                NavigationStack {
                    List {
                        Text("Home Content")
                            .frame(height: 500)
                    }
                    .navigationTitle("Home Title")
                }
                .tabItem {
                    Image("menuIconCalendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                    Text("Profile")
                }
                .tag(3)
            } // End Of Tab View
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color.yellow, for: .tabBar)
        } // End If
    }
}

struct MainNavigationComponent_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            MainNavigationComponent()
        }
    }
}
