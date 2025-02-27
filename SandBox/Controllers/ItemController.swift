//
//  ItemManager.swift
//  SandBox
//

import SwiftUI
import SwiftData

// Controllers == @MainActors
@MainActor
class ItemController {
    static func addItem(modelContext: ModelContext) {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    static func deleteItems(items: [Item], offsets: IndexSet, modelContext: ModelContext) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}
