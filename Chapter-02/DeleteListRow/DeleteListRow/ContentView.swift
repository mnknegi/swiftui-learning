//
//  ContentView.swift
//  DeleteListRow
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
                .onDelete(perform: { indexSet in
                    deleteRow(indexSet: indexSet)
                })
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.large)
        }
    }

    private func deleteRow(indexSet: IndexSet) {
        self.countries.remove(atOffsets: indexSet)
    }
}

#Preview {
    ContentView()
}
