//
//  ItemListView.swift
//  SandBox
//

import SwiftUI
import SwiftData

struct ItemListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @Binding var selectedItem: Item?

    var body: some View {
        List(selection: $selectedItem) {
            ForEach(items) {
                item in NavigationLink(value: item) {
                    Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                }
            }
            .onDelete(perform: deleteItems)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton()
            }
            ToolbarItem {
                Button(action: addItem) {
                    Label("Add Item", systemImage: "plus")
                }
            }
        }
    }

    // Send action to controller
    private func deleteItems(offsets: IndexSet) {
        ItemController.deleteItems(items: items, offsets: offsets, modelContext: modelContext)
    }

    private func addItem() {
        ItemController.addItem(modelContext: modelContext)
    }
}

