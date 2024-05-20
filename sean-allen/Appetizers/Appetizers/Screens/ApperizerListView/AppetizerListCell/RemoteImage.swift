//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Mayank Negi on 20/05/24.
//

import SwiftUI

final class ImageLoader: ObservableObject {

    @Published var image: Image?

    func loadImage(from urlString: String) {
        NetworkManager.shared.downloadImage(from: urlString) { uiImage in
            guard let uiImage = uiImage else {
                return
            }

            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct AppetizerRemoteImage: View {

    @StateObject var imageLoader = ImageLoader()
    let urlString: String

    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear(perform: {
                imageLoader.loadImage(from: urlString)
            })
    }
}

struct RemoteImage: View {

    var image: Image?

    var body: some View {
        image?.resizable() ?? Image(.foodPlaceholder).resizable()
    }
}
