//
//  BlueCircle.swift
//  SwiftUIViewBuilder
//
//  Created by Mayank Negi on 25/04/24.
//

import SwiftUI

struct BlueCircle<Content: View>: View {

    var content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        HStack {
            content
            Spacer()
            Circle()
                .fill(.blue)
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}

#Preview {
    BlueCircle(content: {
        Text("Some Content")
    })
}
