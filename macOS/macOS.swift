//
//  macOS.swift
//  EmojiArt-MultiPlatform
//
//  Created by Matthew Folbigg on 01/08/2021.
//

import SwiftUI

typealias UIImage = NSImage
typealias PaletteManagerView = EmptyView

extension Image {
    init(uiImage: UIImage) {
        self.init(nsImage: uiImage)
    }
}

extension NSImage {
    var imageData: Data? {
        tiffRepresentation
    }
}

extension View {
    func paletteControlButtonStyle() -> some View {
        self.buttonStyle(PlainButtonStyle())
            .foregroundColor(.accentColor).padding(.vertical)
    }
    func popoverPadding() -> some View {
        self.padding(.horizontal)
    }
}

struct Pasteboard {
    static var imageData: Data? {
        NSPasteboard.general.data(forType: .tiff) ?? NSPasteboard.general.data(forType: .png)
    }
    static var imageUrl: URL? {
        (NSURL(from: NSPasteboard.general) as URL?)?.imageURL
    }
}

typealias Camera = CantDoItCamera
struct CantDoItCamera: View {
    var handleCapturedImage: (UIImage?) -> Void
    static var isAvailable: Bool = false
    
    var body: some View {
        EmptyView()
    }
}
