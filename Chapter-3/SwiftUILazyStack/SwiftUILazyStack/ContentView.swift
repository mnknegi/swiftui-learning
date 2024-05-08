//
//  ContentView.swift
//  SwiftUILazyStack
//
//  Created by Mayank Negi on 08/05/24.
//

import SwiftUI

struct ListRow: View {
    let id: Int
    let type: String

    init(id: Int, type: String) {
        self.id = id
        self.type = type
    }

    var body: some View {
        Text("\(type) \(id)")
            .padding()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack(content: {
                    ForEach(1...100, id: \.self) { count in
                        ListRow(id: count, type: "Horizontal")
                            .font(.title)
                    }
                })
            }
            .frame(height: 100)
            ScrollView {
                LazyVStack(content: {
                    ForEach(1...100, id: \.self) { count in
                        ListRow(id: count, type: "Vertical")
                            .font(.title)
                    }
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
