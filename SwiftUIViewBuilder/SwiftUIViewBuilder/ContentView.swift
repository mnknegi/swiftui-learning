//
//  ContentView.swift
//  SwiftUIViewBuilder
//
//  Created by Mayank Negi on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BlueCircle {
                Text("Some content")
                    .font(.title)
                    .fontWeight(.bold)
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
            }

            BlueCircle {
                Text("Some other content")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
