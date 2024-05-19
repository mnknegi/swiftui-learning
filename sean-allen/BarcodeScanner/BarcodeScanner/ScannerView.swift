//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Mayank Negi on 19/05/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {

    @Binding var scannedCode: String

    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(delegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }

    final class Coordinator: NSObject, ScannerVCDelegate {

        private let scannerView: ScannerView

        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }

        func didFind(_ barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didSurface(_ error: CameraError) {
            print(error.rawValue)
        }
    }
}

#Preview {
    ScannerView(scannedCode: .constant("1234567890"))
}
