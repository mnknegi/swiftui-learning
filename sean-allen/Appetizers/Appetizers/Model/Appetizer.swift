//
//  Appetizer.swift
//  Appetizers
//
//  Created by Mayank Negi on 19/05/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1, name: "Test Appetizer", description: "This is the description for my appetizer. ", price: 9.99, imageURL: "some image url", calories: 5, protein: 10, carbs: 15)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
