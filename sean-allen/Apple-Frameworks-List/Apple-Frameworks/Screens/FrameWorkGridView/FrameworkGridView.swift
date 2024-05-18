//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Mayank Negi on 18/05/24.
//

import SwiftUI

struct FrameworkGridView: View {

    /**
     * Initialising a new ObservableObject use `@StateObject`.
     * Injecting a already created `@StateObject` use `ObservedObject`.
     * This `@StateObject` will persist the viewModel property when View is getting created and destroyed all the time.
     */
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailView(framework: framework,
                                            isShowingDetailView: $viewModel.isShowingDetailView)
                    } label: {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
