//
//  ContentView.swift
//  AddListRow
//
//  Created by Mayank Negi on 01/05/24.
//

import SwiftUI

struct ContentView: View {

    @State var numbers = [1, 2, 3, 4]

    var body: some View {
        NavigationView {
            List {
                ForEach(numbers, id: \.self) { number in
                    Text("\(number)")
                }
            }
            .navigationBarTitle("Number List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: addItemToRow, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
    }

    private func addItemToRow() {
        self.numbers.append(Int.random(in: 5..<100))
    }
}

#Preview {
    ContentView()
}
