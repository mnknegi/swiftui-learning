//
//  ContentView.swift
//  SwiftUISFSymbols
//
//  Created by Mayank Negi on 25/04/24.
//

import SwiftUI

struct ContentView: View {

    @State var isWifiOn = false

    var body: some View {
        HStack {
            Image(systemName: "m")
            Image(systemName: "a")
            Image(systemName: "y")
            Image(systemName: "a")
            Image(systemName: "n")
            Image(systemName: "k")
        }
        .font(.title)
        .symbolVariant(.fill.circle)
        .foregroundStyle(.orange, .blue)
        .padding()

        HStack {
            Image(systemName: "n")
            Image(systemName: "e")
                .foregroundStyle(.black, .red)
                .imageScale(.small)
            Image(systemName: "g")
                .imageScale(.large)
            Image(systemName: "i")
                .accessibilityIdentifier("Letter I")
        }
        .font(.title)
        .symbolVariant(.fill.circle)
        .foregroundStyle(.blue)
        .padding()

        HStack {
            Image(systemName: "heart")
            Image(systemName: "airplane")
        }
        .font(.title)
        .imageScale(.large)
        .symbolRenderingMode(.multicolor)
        .symbolVariant(.fill)

        Toggle(isOn: $isWifiOn) {
            Label("WiFi", systemImage: isWifiOn ? "wifi" : "wifi.slash")
        }
        .foregroundStyle(isWifiOn ? .blue : .gray)
        .padding()

    }
}

#Preview {
    ContentView()
}
