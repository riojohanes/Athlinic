//
//  AthlinicApp.swift
//  Athlinic
//
//  Created by Rio Johanes Sumolang on 14/04/23.
//

import SwiftUI

@main
struct AthlinicApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
