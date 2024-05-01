//
//  ContentView.swift
//  EditRowUsingEditButton
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
                    deleteARow(indexSet: indexSet)
                })
            }
            .navigationTitle("Counties")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    EditButton()
                }
            }
        }
    }
    private func deleteARow(indexSet: IndexSet) {
        self.countries.remove(atOffsets: indexSet)
    }
}

#Preview {
    ContentView()
}
