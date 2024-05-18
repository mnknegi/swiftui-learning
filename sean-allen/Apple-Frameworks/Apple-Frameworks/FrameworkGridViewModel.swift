//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Mayank Negi on 18/05/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject { // allow object to publish information/broadcast changes.

    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false // Broadcast changes
}
