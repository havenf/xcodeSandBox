//
//  Item.swift
//  SandBox
//
//  Created by Haven F on 2/27/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
