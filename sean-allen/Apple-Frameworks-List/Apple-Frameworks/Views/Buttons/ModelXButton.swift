//
//  ModelXButton.swift
//  Apple-Frameworks
//
//  Created by Mayank Negi on 18/05/24.
//

import SwiftUI

struct ModelXButton: View {

    @Binding var isShowingDetailView: Bool

    var body: some View {
        HStack {
            Button(action: {
                isShowingDetailView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.red)
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ModelXButton(isShowingDetailView: .constant(false))
}
