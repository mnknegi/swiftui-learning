//
//  ContentView.swift
//  ReorderingListElements
//
//  Created by Mayank Negi on 01/05/24.
//

import SwiftUI

struct ContentView: View {

    @State var countries = ["USA", "Canada", "England","Cameroon", "South Africa", "Mexico" , "Japan", "South Korea"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Text(country)
                }
                .onMove(perform: { indices, newOffset in
                    moveARow(indices: indices, newOffSet: newOffset)
                })
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    EditButton()
                }
            }
        }
    }

    private func moveARow(indices: IndexSet, newOffSet: Int) {
        self.countries.move(fromOffsets: indices, toOffset: newOffSet)
    }
}

#Preview {
    ContentView()
}
