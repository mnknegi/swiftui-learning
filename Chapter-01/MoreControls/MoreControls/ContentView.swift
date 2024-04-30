//
//  ContentView.swift
//  MoreControls
//
//  Created by Mayank Negi on 30/04/24.
//

import SwiftUI

struct ContentView: View {

    @State var progress = 0.5
    @State var selectedColor = Color.red
    @State var SecondaryColor = Color.yellow
    @State var editorTextValue = "Initial Text"

    var body: some View {
        List {
            Section {
                ProgressView("Indeterminate Progress View")
                ProgressView("Downloading", value: progress, total: 2.0)
                Button("More") {
                    if progress < 2.0 {
                        progress += 0.5
                    }
                }
            } header: {
                Text("ProgressViews")
            }

            Section {
                Label("Slow ", systemImage: "tortoise.fill")
                Label(
                    title: { Text("Fast")
                            .font(.title)
                    },
                    icon: { 
                        Circle()
                            .fill(Color.orange)
                            .frame(width: 40, height: 20, alignment: .center)
                            .overlay(Text("F"))
                    }
                )
            } header: {
                Text("Labels")
            }

            Section {
                ColorPicker(selection: $selectedColor, label: {
                    Text("Choose my background")
                        .background(selectedColor)
                        .padding()
                })
                ColorPicker("Picker", selection: $SecondaryColor)
            } header: {
                Text("ColorPicker")
            }

            Section {
                Link("Open Google Webpage", destination: URL(string: "https://www.google.com")!)
            } header: {
                Text("Link")
            }

            Section {
                TextField("TextField", text: $editorTextValue, prompt: Text("Enter Text Here"))
                Text("Current editor text: \(editorTextValue)")
            } header: {
                Text("TextEditor")
            }

            Section {
                Menu("Actions") {
                    Button("Set editor text to Magic") {
                        editorTextValue = "Magic"
                    }
                    Button("Set Picker color to green") {
                        selectedColor = .green
                    }
                    Menu("Actions") {
                        Button("Set editor text to Magic") {
                            editorTextValue = "Magic"
                        }
                        Button("Set Picker color to green") {
                            selectedColor = .green
                        }
                    }
                }
            } header: {
                Text("Menu")
            }
        }
    }
}

#Preview {
    ContentView()
}
