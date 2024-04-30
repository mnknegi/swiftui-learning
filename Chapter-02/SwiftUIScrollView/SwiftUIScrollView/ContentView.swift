//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Mayank Negi on 30/04/24.
//

import SwiftUI

struct ContentView: View {

    let letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p"]

    var body: some View {
        VStack {
            ScrollView {
                ForEach(letters, id: \.self) { letter in
                    Image(systemName: letter)
                        .font(.largeTitle)
                        .foregroundStyle(.yellow)
                        .background(.blue)
                        .frame(width: 50, height: 50)
                        .symbolVariant(.circle.fill)
                }
            }
            .frame(width: 50, height: 200)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(letters, id: \.self) { letter in
                        Image(systemName: letter)
                            .font(.largeTitle)
                            .foregroundStyle(.yellow)
                            .background(.blue)
                            .frame(width: 50, height: 50)
                            .symbolVariant(.circle.fill)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
