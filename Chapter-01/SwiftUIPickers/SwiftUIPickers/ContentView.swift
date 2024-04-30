//
//  ContentView.swift
//  SwiftUIPickers
//
//  Created by Mayank Negi on 25/04/24.
//

import SwiftUI

struct ContentView: View {

    @State var favouritePet: String = "Cat"
    var pets = ["Cat", "Dog", "Parrot"]

    @State var isOn: Bool = false
    @State var sliderValue: Float = 0
    @State var stepperValue: Int = 0
    @State var todaysDate = Date()

    var body: some View {
        Form {
            Section {
                PickerView(favouritePet: $favouritePet, pets: pets)
                    .pickerStyle(.segmented)
                PickerView(favouritePet: $favouritePet, pets: pets)
                    .pickerStyle(.automatic)
                PickerView(favouritePet: $favouritePet, pets: pets)
                    .pickerStyle(.inline)
                PickerView(favouritePet: $favouritePet, pets: pets)
                    .pickerStyle(.menu)
                PickerView(favouritePet: $favouritePet, pets: pets)
                    .pickerStyle(.navigationLink)
                PickerView(favouritePet: $favouritePet, pets: pets)
                    .pickerStyle(.palette)
                PickerView(favouritePet: $favouritePet, pets: pets)
                    .pickerStyle(.wheel)
                Text("Your favourite pet is: \(favouritePet)")
            }

            Section {
                Toggle("Show Content", isOn: $isOn)
                if isOn {
                    Text("The Toggle is on")
                }
            }

            Section {
                Slider(value: $sliderValue, in: 0...100, step: 1)
                Text("Slider Current Value: \(sliderValue, specifier: "%.1f")")
            }

            Section {
                Stepper("Stepper", value: $stepperValue, in: 0...10)
                Text("Stepper Current Value: \(stepperValue)")
            }

            Section {
                DatePicker("Select Date and Time", selection: $todaysDate)
            }

            // Only future Dates only.
            Section {
                DatePicker("Select Date and Time", selection: $todaysDate, in: Date()...)
            }
        }
    }
}

struct PickerView: View {

    @Binding var favouritePet: String
    var pets: [String]

    var body: some View {
        Picker("Who is your favourite pet?", selection: $favouritePet) {
            ForEach(pets, id: \.self) {
                Text($0)
            }
        }
    }
}

#Preview {
    ContentView()
}
