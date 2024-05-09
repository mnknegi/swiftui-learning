//
//  ContentView.swift
//  PreviewDarkMode
//
//  Created by Mayank Negi on 09/05/24.
//

import SwiftUI

struct ContentView: View {

    @Environment(\.colorScheme) var deviceColorScheme

    var body: some View {
        Text(deviceColorScheme == .dark ? "Good Night" : "Good Morning")
            .font(.title)
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}

#Preview {
    ContentView().preferredColorScheme(.light)
}
