//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Mayank Negi on 18/05/24.
//

import SwiftUI

struct AFButton: View {

    let title: String

    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
    }
}

#Preview {
    AFButton(title: "Test Title")
}
