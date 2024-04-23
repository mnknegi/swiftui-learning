//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Mayank Negi on 23/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack() {

            Text("Stay hungry. Stay foolish")
            //            .font(.title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.green)
                .padding()

            Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don ’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                .padding()
                .multilineTextAlignment(.center)
//                .lineLimit(3) // by default it is nil.
                .truncationMode(.middle)
                .font(.system(size: 20.0, weight: .bold, design: .rounded))
                .foregroundStyle(.gray)
                .lineSpacing(10.0)

            Text("Mayank")
                .fontWeight(.heavy)
                .font(.title)
                .rotationEffect(.degrees(330.0))
                .shadow(color: .gray, radius: 2, x: 0.0, y: 15.0)

            Text("Custom font")
                .padding(.top, 40)
                .font(.custom("Nunito", size: 25.0))

            Text("SwiftUI has support for markdown language. **This is your bold text**. *This is italic*. This is a link to open [Google](https://www.google.com) web page.")
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
