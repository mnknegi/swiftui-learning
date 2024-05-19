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
            ScrollView {
                LazyVGrid(columns: viewModel.column) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
