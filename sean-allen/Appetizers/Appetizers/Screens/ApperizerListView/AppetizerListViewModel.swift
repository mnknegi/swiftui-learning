//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Mayank Negi on 20/05/24.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {

    @Published var appetizers: [Appetizer] = []
    @Published var isShowingAlert = false
    @Published var isLoading = false


    var alertItem: AlertItem?

    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let appetizers):
                    self?.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self?.alertItem = AlertContext.invalidData
                        self?.isShowingAlert = true

                    case .invalidResponse:
                        self?.alertItem = AlertContext.invalidResponse
                        self?.isShowingAlert = true

                    case .invalidURL:
                        self?.alertItem = AlertContext.invalidURL
                        self?.isShowingAlert = true

                    case .invalidUnableToComplete:
                        self?.alertItem = AlertContext.invalidUnableToComplete
                        self?.isShowingAlert = true
                    }
                }
            }
        }
    }
}
