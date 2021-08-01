//
//  EmojiArt_MultiPlatformApp.swift
//  Shared
//
//  Created by Matthew Folbigg on 01/08/2021.
//

import SwiftUI

@main
struct EmojiArt_MultiPlatformApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: EmojiArt_MultiPlatformDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
