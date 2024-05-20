//
//  LoadingView.swift
//  Appetizers
//
//  Created by Mayank Negi on 20/05/24.
//

import SwiftUI

struct LoadingView: View {

    var body: some View {
        ProgressView(label: {
            Text("Brewing at the back...")
                .font(.title3)
                .fontWeight(.semibold)
        })
        .foregroundStyle(Color(.label))
    }
}

#Preview {
    LoadingView()
}
