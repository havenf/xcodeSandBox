//
//  ItemRow.swift
//  SandBox
//

import SwiftUI

struct ItemRow: View {
    let item: Item

    var body: some View {
        NavigationLink {
            ItemDetailView(item: item)
        } label: {
            Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
        }
    }
}


