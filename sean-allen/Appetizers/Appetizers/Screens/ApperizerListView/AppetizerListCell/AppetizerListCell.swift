//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Mayank Negi on 19/05/24.
//

import SwiftUI

struct AppetizerListCell: View {

    let appetizer: Appetizer

    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 8)))

            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)

                Text("$\(appetizer.price, specifier: "%0.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
