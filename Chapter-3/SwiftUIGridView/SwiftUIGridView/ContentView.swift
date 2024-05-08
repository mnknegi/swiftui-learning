//
//  ContentView.swift
//  SwiftUIGridView
//
//  Created by Mayank Negi on 08/05/24.
//

import SwiftUI

struct ContentView: View {

    let columnSpec = [
//        GridItem(.adaptive(minimum: 100))
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    let rowSpec = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    let colors: [Color] = [.red, .green, .yellow, .blue]

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columnSpec, spacing: 20, content: {
                    ForEach(1...100, id: \.self) { index in
                        Text("Item \(index)")
                            .padding(EdgeInsets(top: 30, leading: 15, bottom: 30, trailing: 15))
                            .background(colors[index % colors.count])
                            .clipShape(Capsule())
                    }
                })
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: rowSpec, spacing: 20, content: {
                    ForEach(1...100, id: \.self) { index in
                        Text("Item \(index)")
                            .padding(EdgeInsets(top: 30, leading: 15, bottom: 30, trailing: 15))
                            .background(colors[index % colors.count])
                            .clipShape(Capsule())
                    }
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
