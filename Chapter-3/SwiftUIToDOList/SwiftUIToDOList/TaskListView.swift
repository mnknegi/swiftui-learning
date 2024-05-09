//
//  TaskListView.swift
//  SwiftUIToDOList
//
//  Created by Mayank Negi on 09/05/24.
//

import SwiftUI

struct TaskListView: View {

    var tasks: [ToDOTask]

    var body: some View {
        List {
            ForEach(tasks) { task in
                TaskItem(task: task)
            }
        }
    }
}

#Preview {
    TaskListView(tasks: tasks)
}
