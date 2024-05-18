//
//  WeatherButtonView.swift
//  WeatherApp
//
//  Created by Mayank Negi on 18/05/24.
//

import SwiftUI

struct WeatherButtonView: View {
    
    let title: String
    let titleColor: Color
    let backgroundColor: Color

    var body: some View {
        Text(title)
            .foregroundStyle(titleColor)
            .font(.title)
            .fontWeight(.bold)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
    }
}

#Preview {
    WeatherButtonView(title: "Test Title",
                      titleColor: .white,
                      backgroundColor: .blue)
}
