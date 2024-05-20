//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Mayank Negi on 19/05/24.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }

            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .tint(Color(.brandPrimary))
    }
}

#Preview {
    AppetizerTabView()
}
