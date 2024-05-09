//
//  ContentView.swift
//  SwiftDisclosureGroup
//
//  Created by Mayank Negi on 09/05/24.
//

import SwiftUI

struct ContentView: View {

    @State var showPlanets = false

    var body: some View {
        VStack {
            DisclosureGroup("Planets", isExpanded: $showPlanets) {
                Planet("Mercury")
                Planet("Venus")
                Planet("Earth")
                Planet("Mars")
                Planet("Jupiter")
                Planet("Saturn")
                Planet("Uranus")
                Planet("Naptune")

                DisclosureGroup("Earth") {
                    Continents("Africa")
                    Continents("Antarctica")
                    Continents("Asia")
                    Continents("Australia")
                    Continents("Europe")
                    Continents("North America")
                    Continents("South America")
                }
            }
            .font(.title)

            DisclosureGroup(
                content: {
                    Text("This is another way of imoplementing DisclosureGroup")
                },
                label: {
                    Label("Tap to reveal", systemImage: "hand.tap.fill")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                }
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct Planet: View {

    var planet: String

    init(_ planet: String) {
        self.planet = planet
    }

    var body: some View {
        Text(planet)
            .font(.title2)
            .fontWeight(.bold)
    }
}

struct Continents: View {

    var continent: String

    init(_ continent: String) {
        self.continent = continent
    }

    var body: some View {
        Text(continent)
            .font(.title2)
            .fontWeight(.bold)
    }
}
