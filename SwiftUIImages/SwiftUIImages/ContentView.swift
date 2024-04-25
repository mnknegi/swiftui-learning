//
//  ContentView.swift
//  SwiftUIImages
//
//  Created by Mayank Negi on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {

            Spacer()

            VStack {
                Image(.dogAndNature)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Spacer()

                Image(uiImage: ImageHelper.getUIImage(named: "dogs1"))
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            }

            Image("dog2", bundle: .main)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 5.0))
                .shadow(color: .gray, radius: 10.0, x: 0.0, y: 0.0)
        }
        .padding()

        Spacer()

    }
}

#Preview {
    ContentView()
}
