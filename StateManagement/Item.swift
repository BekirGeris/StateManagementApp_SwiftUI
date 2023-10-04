//
//  Item.swift
//  ToDoListStateManagementSwiftData
//
//  Created by Bekir Geriş on 4.10.2023.
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
