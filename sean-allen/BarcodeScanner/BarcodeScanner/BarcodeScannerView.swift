//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Mayank Negi on 19/05/24.
//

import SwiftUI

struct BarcodeScannerView: View {

    @State private var scannedCode = ""

    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)

                Spacer()
                    .frame(height: 60)

                Label("Scan Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)

                Text(scannedCode.isEmpty ? "Not Yet Scanned": scannedCode)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
