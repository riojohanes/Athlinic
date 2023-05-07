//
//  ContentView.swift
//  Athlinic
//
//  Created by Rio Johanes Sumolang on 14/04/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var isFirstTime = true
    
    @State var currentPage = "homepage"
    
    //    @Environment(\.managedObjectContext) private var viewContext
    //
    //    @FetchRequest(
    //        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
    //        animation: .default)
    //    private var items: FetchedResults<Item>
    
    var body: some View {
        
        if (isFirstTime) {
            Landing_Page_view()
        } else {
            RouterView(bmiCategory: .constant("underweight"))
//            TodayScheduleView(bmiCategory: .constant("underweight"))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
