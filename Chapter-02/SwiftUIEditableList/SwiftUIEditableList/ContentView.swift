//
//  ContentView.swift
//  SwiftUIEditableList
//
//  Created by Mayank Negi on 01/05/24.
//

import SwiftUI

struct ToDo: Identifiable {
    let id = UUID()
    var title: String

    init(_ title: String) {
        self.title = title
    }
}

struct ContentView: View {

    @State var todoList = [
        ToDo("Eat"),
        ToDo("Sleep"),
        ToDo("Code")
    ]

    var body: some View {
        List {
            ForEach($todoList) { $item in
                TextField(item.title, text: $item.title)
            }
        }
    }
}

#Preview {
    ContentView()
}
