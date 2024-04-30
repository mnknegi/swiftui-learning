//
//  UIImageHelper.swift
//  SwiftUIImages
//
//  Created by Mayank Negi on 25/04/24.
//

import UIKit

final class ImageHelper {

    static func getUIImage(named: String) -> UIImage {
        guard
            let uiImage = UIImage(named: named) else {
            fatalError("No image with named \(named) in resource.")
        }
        return uiImage
    }
}
