//
//  ToDoListStateManagementSwiftDataApp.swift
//  ToDoListStateManagementSwiftData
//
//  Created by Bekir Geriş on 4.10.2023.
//

import SwiftUI
import SwiftData

@main
struct ToDoListStateManagementSwiftDataApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
