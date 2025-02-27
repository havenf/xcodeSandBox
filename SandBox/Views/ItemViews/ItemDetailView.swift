//
//  ItemDetailView.swift
//  SandBox
//
//  Created by Haven F on 2/27/25.
//

import SwiftUI
import SwiftData

struct ItemDetailView: View {
    let item: Item

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Created on:")
                    .font(.headline)
                Text(item.timestamp, format: Date.FormatStyle(date: .long, time: .standard))
            }
            //add additional details here
        }
        .padding()
        .navigationTitle("Details")
    }
}
