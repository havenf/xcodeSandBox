//
//  SandBoxApp.swift
//  SandBox
//
//  Created by Haven F on 2/27/25.
//

import SwiftUI
import SwiftData

@main
struct SandBoxApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            // Register created models here
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
