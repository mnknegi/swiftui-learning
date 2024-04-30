//
//  WeatherRow.swift
//  CustomRow
//
//  Created by Mayank Negi on 30/04/24.
//

import SwiftUI

struct WeatherRow: View {

    var weather: WeatherInfo

    var body: some View {
        HStack {
            HStack(spacing: 8, content: {
                Image(systemName: weather.image)
                Text("\(weather.temp)")
            })
            Spacer()
            Text("\(weather.city)")
        }
        .font(.system(size: 25))
        .padding()
    }
}

#Preview {
    WeatherRow(weather: WeatherInfo(image: "snow", temp: 5, city:"New York"))
}
