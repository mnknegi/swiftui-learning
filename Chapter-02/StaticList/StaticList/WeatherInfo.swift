//
//  WeatherInfo.swift
//  StaticList
//
//  Created by Mayank Negi on 30/04/24.
//

import Foundation

struct WeatherInfo: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}
