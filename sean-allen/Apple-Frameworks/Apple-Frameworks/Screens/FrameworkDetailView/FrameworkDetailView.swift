//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Mayank Negi on 18/05/24.
//

import SwiftUI

struct FrameworkDetailView: View {

    let framework: Framework

    @State var isShowingSafariView = false

    var body: some View {
        VStack {

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button(action: {
                isShowingSafariView = true
            }, label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
