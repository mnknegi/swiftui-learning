//
//  Alert.swift
//  Appetizers
//
//  Created by Mayank Negi on 20/05/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let actionTitle: String
}

struct AlertContext {
    static let invalidURL = AlertItem(title: "Server Error", message: "There was an issue connecting to the server. If this persists, please contact support.", actionTitle: "OK")

    static let invalidResponse = AlertItem(title: "Server Error", message: "Invalid respoinse from the server. Please try again later or contact support.", actionTitle: "OK")

    static let invalidData = AlertItem(title: "Server Error", message: "The data received from the server was invalid. Please contact support.", actionTitle: "OK")

    static let invalidUnableToComplete = AlertItem(title: "Server Error", message: "Unable to complete your request at this time. Please check your internet connection.", actionTitle: "OK")
}

