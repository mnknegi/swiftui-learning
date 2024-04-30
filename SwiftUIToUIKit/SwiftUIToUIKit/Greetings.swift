//
//  Greetings.swift
//  SwiftUIToUIKit
//
//  Created by Mayank Negi on 30/04/24.
//

import SwiftUI

struct Greetings: View {
    var textFromUIKit: String = ""
    var body: some View {
        Text(textFromUIKit)
    }
}

#Preview {
    Greetings()
}
