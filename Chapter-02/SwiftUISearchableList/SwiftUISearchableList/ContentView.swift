//
//  ContentView.swift
//  SwiftUISearchableList
//
//  Created by Mayank Negi on 01/05/24.
//

import SwiftUI

struct ContentView: View {

    @State var searchString = ""

    let messages = [
        "Dad, can you lend me money?",
        "Nada. Does money grow on trees?",
        "What is money made out of?",
        "Paper",
        "Where does paper come from?",
        "Huh.....",
        ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.self) { message in
                    Text(message)
                }
            }
            .searchable(text: $searchString) {
                ForEach(searchResults, id: \.self) { result in
                    Text("Are you loolong for \(result)?")
                        .searchCompletion(result)
                }
            }
            .navigationTitle("Order Number")
        }
    }

    var searchResults: [String] {
        if searchString.isEmpty {
            messages
        } else {
            messages.filter( {$0.lowercased().contains( searchString.lowercased())} )
        }
    }
}

#Preview {
    ContentView()
}
