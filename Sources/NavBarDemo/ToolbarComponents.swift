//
//  ToolbarComponents.swift
//  NavBarDemo
//
//  Created by Hanushka Suren on 27/09/2026.
//

import SwiftUI

/// A reusable leading back button. The demo screens pass an explicit
/// pop action rather than relying on the environment dismiss action,
/// so the behavior is unambiguous when it is wired into a NavigationStack
/// path (see DemoRootView).
struct BackButton: ToolbarContent {
    let action: () -> Void

    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button(action: action) {
                HStack(spacing: 4) {
                    Image(systemName: "chevron.left")
                    Text("Back")
                        .fixedSize()
                }
            }
        }
    }
}

/// A single trailing action, icon only. Add as many of these as you
/// need with .topBarTrailing, SwiftUI lays them out in order.
struct TrailingAction: ToolbarContent {
    let title: String
    let systemImage: String
    let action: () -> Void

    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button(title, systemImage: systemImage, action: action)
                .labelStyle(.iconOnly)
        }
    }
}
