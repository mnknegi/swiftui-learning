//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Mayank Negi on 19/05/24.
//

import SwiftUI

struct AppetizerListView: View {

    @StateObject var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers, rowContent: { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                })
                    .navigationTitle("🍿 Appetizers")
            }
            .onAppear(perform: {
                viewModel.getAppetizers()
            })

            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(viewModel.alertItem?.title ?? "Something went wrong", isPresented: $viewModel.isShowingAlert) {
            Button(viewModel.alertItem?.actionTitle ?? "OK", role: .cancel) { }
        } message: {
            Text(viewModel.alertItem?.message ?? "please try again.")
        }
    }
}

#Preview {
    AppetizerListView()
}
