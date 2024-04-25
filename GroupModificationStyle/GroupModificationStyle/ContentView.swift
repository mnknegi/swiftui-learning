//
//  ContentView.swift
//  GroupModificationStyle
//
//  Created by Mayank Negi on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Group Style Modification")
            .backgroundStyle(color: .red)
    }
}

struct BackgroundStyle: ViewModifier {

    var bgColor: Color

    func body(content: Content) -> some View {
        content
            .padding()
            .font(.title)
            .fontWeight(.black)
            .foregroundStyle(.white)
            .background(bgColor)
            .clipShape(.capsule)
    }
}

extension View {
    func backgroundStyle(color: Color) -> some View {
        self.modifier(BackgroundStyle(bgColor: color))
    }
}

#Preview {
    ContentView()
}
