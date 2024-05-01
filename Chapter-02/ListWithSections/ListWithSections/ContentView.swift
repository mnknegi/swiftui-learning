//
//  ContentView.swift
//  ListWithSections
//
//  Created by Mayank Negi on 01/05/24.
//

import SwiftUI

struct ContentView: View {

    var northAmerica = ["USA", "Canada", "Mexico" ,"Panama", "Anguila"]
    var africa = ["Nigeria", "Ghana", "Kenya", "Senegal"]
    var asia = ["India", "China", "Russia", "Sri Lanka", "Nepal"]

    var body: some View {
        NavigationStack {
            List {
                ContinentSection(continentName: "North America", countries: northAmerica)

                ContinentSection(continentName: "Africa", countries: africa)

                ContinentSection(continentName: "Asia", countries: asia)
            }
            .navigationTitle("Continents & Countries")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

struct SectionHeaderView: View {

    var continent: String

    var body: some View {
        Text(continent)
            .font(.headline)
            .fontWeight(.black)
    }
}

struct ContinentSection: View {

    var continentName: String
    var countries: [String]

    var body: some View {
        Section {
            ForEach(countries, id: \.self) { country in
                Text(country)
                    .font(.title3)
            }
        } header: {
            SectionHeaderView(continent: continentName)
        }
    }
}
