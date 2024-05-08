//
//  ContentView.swift
//  SwiftUIScrollViewReader
//
//  Created by Mayank Negi on 08/05/24.
//

import SwiftUI

struct CharacterInfo: Identifiable {
    var id: Int
    var name: String
}

struct ContentView: View {

    let characters = [
        CharacterInfo(id: 1, name: "a.circle.fill"),
        CharacterInfo(id: 2, name: "b.circle.fill"),
        CharacterInfo(id: 3, name: "c.circle.fill"),
        CharacterInfo(id: 4, name: "d.circle.fill"),
        CharacterInfo(id: 5, name: "e.circle.fill"),
        CharacterInfo(id: 6, name: "f.circle.fill"),
        CharacterInfo(id: 7, name: "g.circle.fill"),
        CharacterInfo(id: 8, name: "h.circle.fill"),
        CharacterInfo(id: 9, name: "i.circle.fill"),
        CharacterInfo(id: 10, name: "j.circle.fill"),
        CharacterInfo(id: 11, name: "k.circle.fill"),
        CharacterInfo(id: 12, name: "l.circle.fill"),
        CharacterInfo(id: 13, name: "m.circle.fill"),
        CharacterInfo(id: 14, name: "n.circle.fill"),
        CharacterInfo(id: 15, name: "o.circle.fill"),
        CharacterInfo(id: 16, name: "p.circle.fill"),
        CharacterInfo(id: 17, name: "q.circle.fill"),
        CharacterInfo(id: 18, name: "r.circle.fill"),
        CharacterInfo(id: 19, name: "s.circle.fill"),
        CharacterInfo(id: 20, name: "t.circle.fill"),
        CharacterInfo(id: 21, name: "u.circle.fill"),
        CharacterInfo(id: 22, name: "v.circle.fill"),
        CharacterInfo(id: 23, name: "w.circle.fill"),
        CharacterInfo(id: 24, name: "x.circle.fill"),
        CharacterInfo(id: 25, name: "y.circle.fill"),
        CharacterInfo(id: 26, name: "z.circle.fill")
    ]

    var body: some View {
        ScrollView {
            ScrollViewReader(content: { value in

                Button("Go to letter Q") {
                    value.scrollTo(17, anchor: .top)
                }
                .padding()
                .font(.title2)
                .background(.yellow)
                .foregroundStyle(.white)

                ForEach(characters) { character in
                    Image(systemName: character.name)
                        .padding()
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .background(.blue)
                }

                Button("Go to letter G") {
                    value.scrollTo(7, anchor: .center)
                }
                .padding()
                .font(.title2)
                .background(.yellow)
                .foregroundStyle(.white)

                Button("Go to letter M") {
                    value.scrollTo(13, anchor: .bottom)
                }
                .padding()
                .font(.title2)
                .background(.yellow)
                .foregroundStyle(.white)
            })
        }
    }
}

#Preview {
    ContentView()
}
