//
//  ContentView.swift
//  CustomRow
//
//  Created by Mayank Negi on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(weatherData) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

#Preview {
    ContentView()
}
