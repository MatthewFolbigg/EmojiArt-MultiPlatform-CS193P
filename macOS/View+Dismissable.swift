//
//  View+Dismissable.swift
//  EmojiArt-CS193P
//
//  Created by Matthew Folbigg on 31/07/2021.
//

import SwiftUI

extension View {
    @ViewBuilder
    func wrappedInNavigationViewToEnableDismissal(_ dismiss: (() -> Void)? = nil) -> some View {
        // This is a do nothing implementation for MacOS.
        // A version of this view modifier is used on some view to handle compact views on iOS
        self
    }
}
