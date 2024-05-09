//
//  Task.swift
//  SwiftUIToDOList
//
//  Created by Mayank Negi on 09/05/24.
//

import Foundation

enum Priority {
    case low
    case medium
    case high
}

struct ToDOTask: Identifiable {
    let id = UUID()
    let description: String
    var completed: Bool
    let priority: Priority
}

let tasks = [
    ToDOTask(description: "Wake up", completed: false, priority: .low ),
    ToDOTask(description: "Shower", completed: false, priority: .medium),
    ToDOTask(description: "Code", completed: false, priority: .high),
    ToDOTask(description: "Eat", completed: false, priority: .high ),
    ToDOTask(description: "Sleep", completed: false, priority: .high),
    ToDOTask(description: "Get groceries", completed: false, priority: .high)
]
