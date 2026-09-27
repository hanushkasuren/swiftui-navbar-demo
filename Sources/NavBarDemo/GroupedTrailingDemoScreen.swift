//
//  GroupedTrailingDemoScreen.swift
//  NavBarDemo
//
//  Created by Hanushka Suren on 27/09/2026.
//

import SwiftUI

/// This is the exact pattern from the article. Share and Favorite sit
/// inside one ToolbarItemGroup, so they share a single glass background.
/// The ToolbarSpacer breaks that group, so Add gets its own separate
/// glass background at the trailing edge.
struct GroupedTrailingDemoScreen: View {
    let pop: () -> Void

    var body: some View {
        List {
            Section {
                Text("Back sits alone on the leading edge.")
                Text("Share and Favorite share one glass background because they are inside one ToolbarItemGroup.")
                Text("The ToolbarSpacer after the group opens a visible gap, so Add renders in its own glass background.")
            }
        }
        .navigationTitle("Grouped Trailing")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            BackButton(action: pop)
            ToolbarItemGroup(placement: .topBarTrailing) {
                Button("Share", systemImage: "square.and.arrow.up") { }
                Button("Favorite", systemImage: "heart") { }
            }
            ToolbarSpacer(.fixed, placement: .topBarTrailing)
            TrailingAction(title: "Add", systemImage: "plus") { }
        }
    }
}
