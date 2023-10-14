//
//  Item.swift
//  Something
//
//  Created by Савва Пономарев on 14.10.2023.
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
