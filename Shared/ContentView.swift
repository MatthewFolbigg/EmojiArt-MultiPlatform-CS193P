//
//  ContentView.swift
//  Shared
//
//  Created by Matthew Folbigg on 01/08/2021.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: EmojiArt_MultiPlatformDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(EmojiArt_MultiPlatformDocument()))
    }
}
