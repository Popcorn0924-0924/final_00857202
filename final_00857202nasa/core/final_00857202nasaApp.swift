//
//  final_00857202nasaApp.swift
//  final_00857202nasa
//
//  Created by User08 on 2021/1/8.
//

import SwiftUI

@main
struct final_00857202nasaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            appView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
