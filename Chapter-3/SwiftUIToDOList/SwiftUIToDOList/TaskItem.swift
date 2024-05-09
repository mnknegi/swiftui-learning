//
//  TaskItem.swift
//  SwiftUIToDOList
//
//  Created by Mayank Negi on 09/05/24.
//

import SwiftUI

struct TaskItem: View {

    @State var task: ToDOTask

    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(task.completed ? Color(UIColor.systemBlue) : Color.secondary)
                .onTapGesture {
                    task.completed.toggle()
                }
            Text(task.description)
                .font(.title2)
                .padding()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TaskItem(task: tasks[0])
}
