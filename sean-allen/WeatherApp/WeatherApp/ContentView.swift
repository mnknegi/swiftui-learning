//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mayank Negi on 17/05/24.
//

import SwiftUI

struct ContentView: View {

    @State private var isNight = false

    var body: some View {
        ZStack {
            BackgroundGradientView(isNight: isNight)

            VStack {
                CitynameView(cityName: "New Delhi, IND")

                TodaysTemperatureView(imageLogo: isNight ? "moon.stars.fill": "cloud.sun.fill", todaysTemperature: "35° C")

                ScrollView([.horizontal], showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForcastView(day: "TUE", 
                                    image: "cloud.sun.fill",
                                    temp: "34° C")

                        ForcastView(day: "WED",
                                    image: "sun.max.fill",
                                    temp: "32° C")

                        ForcastView(day: "THUR", 
                                    image: "wind.snow",
                                    temp: "34° C")

                        ForcastView(day: "FRI", 
                                    image: "cloud.bolt.fill",
                                    temp: "25° C")

                        ForcastView(day: "SAT", 
                                    image: "snow",
                                    temp: "2° C")
                    }
                }
                .padding()

                Spacer()

                Button(action: {
                    isNight.toggle()
                }, label: {
                    WeatherButtonView(title: "Change Day Time", 
                                      titleColor: .blue,
                                      backgroundColor: .white)
                })

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct ForcastView: View {

    let day: String
    let image: String
    let temp: String

    var body: some View {
        VStack(spacing: 8) {
            Text(day)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Image(systemName: image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)

            Text(temp)
                .font(.system(size: 28, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundGradientView: View {

    var isNight: Bool

    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(edges: .all)
    }
}

struct CitynameView: View {

    let cityName: String

    var body: some View {
        Text(cityName)
            .font(.system(size: 32.0, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct TodaysTemperatureView: View {

    let imageLogo: String
    let todaysTemperature: String

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageLogo)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text(todaysTemperature)
                .font(.system(size: 70.0, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}
