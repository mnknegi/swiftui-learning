//
//  ContentView.swift
//  FormattedText
//
//  Created by Mayank Negi on 24/04/24.
//

import SwiftUI

struct ContentView: View {

    @State var passkey: String = "1234"
    @State var initialText: String = "Initial Text"

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Password")
                    .fontWeight(.bold)
                    .font(.title3)
                SecureField("Enter a password", text: $passkey)
            }

            HStack() {
                Text("Password entered: \(passkey)")
                    .fontWeight(.regular)
                    .font(.headline)
                Spacer()
            }

            TextField("Some Text", text: $initialText)
            Text(initialText)
                .font(.largeTitle)
                .underline(pattern: .dot)

            Text("Use kerning to change space between lines of text")
                .kerning(7)
                .padding()

            HStack() {
                Text("Changing")
                Text("baseline")
                    .background(.yellow)
                    .baselineOffset(20)
                Text("offset")
            }

            Text("Strikethrough")
                .strikethrough()
                .font(.title)
                .padding()

            Text("Italic, bold and underline text")
                .italic()
                .bold()
                .underline()
                .padding(.bottom)

            Text("This is a multiline text implemented in swiftUI. The trailing modifier was added to the text. This text also implements multiple modifiers")
                .foregroundStyle(.white)
                .background(.gray)
                .multilineTextAlignment(.leading)
                .lineSpacing(10)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
