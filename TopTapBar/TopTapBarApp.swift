//
//  TopTapBarApp.swift
//  TopTapBar
//
//  Created by Anas Hamad on 10/2/22.
//

import SwiftUI

@main
struct TopTapBarApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
