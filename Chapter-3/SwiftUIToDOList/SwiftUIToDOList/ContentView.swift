//
//  ContentView.swift
//  SwiftUIToDOList
//
//  Created by Mayank Negi on 09/05/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            TaskListView(tasks: tasks)
                .navigationTitle("ToDO Task List")
        }
    }
}

#Preview {
    ContentView()
}
