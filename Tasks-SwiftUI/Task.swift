//
//  Task.swift
//  Tasks-SwiftUI
//
//  Created by GOM on 08/11/22.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let done: Bool = false
}

