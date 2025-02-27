//
//  ContentView.swift
//  SandBox
//
//  Created by Haven F on 2/27/25.
//


import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selectedItem: Item?

    var body: some View {
        NavigationSplitView {
            ItemListView(selectedItem: $selectedItem)
        } detail: {
            if let item = selectedItem {
                ItemDetailView(item: item)
            } else {
                Text("Select an item")
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

