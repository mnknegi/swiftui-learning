//
//  ContentView.swift
//  Buttons-And-Navigations
//
//  Created by Mayank Negi on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView() {
                VStack(spacing: 10) {

                    Text("SwiftUI Buttons")
                        .font(.title)
                        .fontWeight(.bold)

                    HeaderView(title: "Navigation Link")

                    NavigationLink {
                        SecondView()
                    } label: {
                        Text("Navigation Link")
                    }


                    HeaderView(title: "Custom Buttons")

                    VStack(spacing: 8) {
                        Button("I'm default Button") {
                            // Action
                        }

                        Button(action: {
                            // Action
                        }, label: {
                            Text("Custom text here")
                        })

                        Button(action: {
                            // Action
                        }, label: {
                            Text("Red Bold Title Button")
                                .foregroundStyle(.red)
                                .font(.title)
                                .fontWeight(.bold)
                        })
                    }

                    HeaderView(title: "SwiftUI Button Styles")

                    /**
                     SwiftUI Button Styles allow you to maintain consistency in the appearance of your buttons throughout your app without manually adjusting each button.
                     */

                    VStack(spacing: 8) {
                        Button("Plain", action: {})
                            .buttonStyle(.plain)

                        Button("Automatic", action: {})
                            .buttonStyle(.automatic)

                        Button("Bordered", action: {})
                            .buttonStyle(.bordered)

                        Button("Bordered Prominent", action: {})
                            .buttonStyle(.borderedProminent)

                        Button("Borderless", action: {})
                            .buttonStyle(.borderless)
                    }

                    HeaderView(title: "Button Background Color")

                    VStack(spacing: 10) {

                        Button(action: {}, label: {
                            Text("Solid Button")
                                .padding()
                                .foregroundStyle(.white)
                                .background(.orange)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        })

                        Button(action: {}, label: {
                            Text("Button with Shadow")
                                .padding()
                                .foregroundStyle(.white)
                                .background(.orange)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        })
                        .shadow(color: .red, radius: 15, y: 5)

                        Button(action: {}, label: {
                            Text("Rounded Button")
                                .padding()
                                .foregroundStyle(.white)
                                .background(.orange)
                                .clipShape(RoundedRectangle(cornerRadius: 100))
                        })
                    }
                }

                HeaderView(title: "Button Enabled Disabled")

                HStack() {
                    Button("Enabled") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        .controlSize(.extraLarge)

                    Button("Disabled") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        .controlSize(.extraLarge)
                        .disabled(true)
                }

                HeaderView(title: "Button Borders")

                HStack() {
                    Button("Bordered Button") {}
                        .padding()
                        .border(.blue)

                    Button("Rounded Bordered Button") {}
                        .padding()
                        .background (
                            RoundedRectangle(cornerRadius: 10).stroke(.blue)
                        )
                }

                HeaderView(title: "Button with SF Symbols")

                HStack() {
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .padding(.horizontal)
                    })
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))

                    Button(action: {}, label: {
                        VStack {
                            Image(systemName: "message.fill")
                            Text("Message")
                                .font(.title2)
                        }
                    })
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: .infinity))
                }

                HeaderView(title: "Button Control Size")

                VStack {
                    HStack {
                        Button("Mini") {}
                            .buttonStyle(.bordered)
                            .controlSize(.mini)
                        Button("Small") {}
                            .buttonStyle(.bordered)
                            .controlSize(.small)
                    }

                    HStack {
                        Button("Regular") {}
                            .buttonStyle(.bordered)
                            .controlSize(.regular)

                        Button("Large") {}
                            .buttonStyle(.bordered)
                            .controlSize(.large)

                        Button("Extra Large") {}
                            .buttonStyle(.bordered)
                            .controlSize(.extraLarge)
                    }
                }

                HeaderView(title: "Button Border Shape")

                HStack {
                    Button("Automatic") {}
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.automatic)

                    Button("Capsule") {}
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.capsule)
                }

                HStack {
                    Button("Rounded Rectangle") {}
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.roundedRectangle)

                    Button("Circle") {}
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.circle)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct HeaderView: View {

    var title: String

    var body: some View {
        Divider()
            .overlay(.black)

        Text(title)
            .font(.title3)
            .fontWeight(.bold)

        Divider()
            .overlay(.black)

    }
}
