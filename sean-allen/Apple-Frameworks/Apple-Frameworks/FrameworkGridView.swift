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

    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: column) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {

    let framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)

            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
