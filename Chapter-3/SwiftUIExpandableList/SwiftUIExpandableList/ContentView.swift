//
//  ContentView.swift
//  SwiftUIExpandableList
//
//  Created by Mayank Negi on 08/05/24.
//

import SwiftUI

struct Backpack: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var backpackContent: [Backpack]?
}

let dollar = Backpack(name: "Dollar", icon: "dollarsign.circle")
let yen = Backpack(name: "Yen", icon: "yensign.circle")
let currencies = Backpack(name: "Currencies", icon: "coloncurrencysign.circle", backpackContent: [dollar, yen])

let pencil = Backpack(name: "Pencil",icon: "pencil.circle")
let hammer = Backpack(name: "Hammer",icon: "hammer")
let paperClip = Backpack(name: "Paperclip",icon: "paperclip")
let glass = Backpack(name: "Magnifying glass", icon: "magnifyingglass")
let bin  = Backpack(name: "Bin", icon: "arrow.up.bin", backpackContent: [paperClip, glass])
let tools = Backpack(name: "Tools", icon: "folder", backpackContent: [pencil, hammer,bin])

struct ContentView: View {
    let mainContents = [currencies, tools]
    var body: some View {
        List(mainContents, children: \.backpackContent) { backpack in
            Image(systemName: backpack.icon)
            Text(backpack.name)
        }
    }
}

#Preview {
    ContentView()
}
