//
//  iOS.swift
//  EmojiArt-MultiPlatform
//
//  Created by Matthew Folbigg on 01/08/2021.
//

import SwiftUI

extension UIImage {
    var imageData: Data? {
        jpegData(compressionQuality: 1.0)
    }
}

extension View {
    func paletteControlButtonStyle() -> some View {
        self
    }
    func popoverPadding() -> some View {
        self
    }
}

struct Pasteboard {
    static var imageData: Data? {
        UIPasteboard.general.image?.imageData
    }
    static var imageUrl: URL? {
        UIPasteboard.general.url?.imageURL
    }
}
