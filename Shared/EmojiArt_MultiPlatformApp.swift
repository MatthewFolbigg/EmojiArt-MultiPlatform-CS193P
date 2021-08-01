//
//  EmojiArt_MultiPlatformApp.swift
//  Shared
//
//  Created by Matthew Folbigg on 01/08/2021.
//

import SwiftUI

@main
struct EmojiArt_CS193PApp: App {
    @StateObject var paletteStore = PaletteStore(named: "Default")
        
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}

