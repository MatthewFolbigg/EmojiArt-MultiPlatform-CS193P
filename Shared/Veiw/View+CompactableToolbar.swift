//
//  View+CompactableToolbar.swift
//  EmojiArt-CS193P
//
//  Created by Matthew Folbigg on 31/07/2021.
//

import SwiftUI

extension View {
    
    func compactableToolbar<Content>(@ViewBuilder content: () -> Content) -> some View where Content: View {
        self.toolbar {
            content()
                .modifier(compactableToContextMenu())
        }
    }
    
}

struct compactableToContextMenu: ViewModifier {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var isCompact: Bool { horizontalSizeClass == .compact }
    #else
    let isCompact = false
    #endif
    
    func body(content: Content) -> some View {
        if isCompact {
            Button(action: { }, label: {
                Image(systemName: "ellipsis.circle")
                    .contextMenu(menuItems: { content })
            })
        } else {
            content
        }
    }
    
}
