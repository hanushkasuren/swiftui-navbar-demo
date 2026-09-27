//
//  MultipleTrailingDemoScreen.swift
//  NavBarDemo
//
//  Created by Hanushka Suren on 27/09/2026.
//

import SwiftUI

/// Two independent trailing actions. No ToolbarItemGroup, no ToolbarSpacer,
/// just two plain ToolbarItem entries with .topBarTrailing. By default they
/// share one glass background, since only a spacer or a separate group
/// breaks that.
struct MultipleTrailingDemoScreen: View {
    let pop: () -> Void

    var body: some View {
        List {
            Text("Search and Add are two separate ToolbarItem entries, both .topBarTrailing.")
            Text("With no ToolbarItemGroup and no ToolbarSpacer between them, they render in one shared glass background by default.")
        }
        .navigationTitle("Multiple Trailing")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            BackButton(action: pop)
            TrailingAction(title: "Search", systemImage: "magnifyingglass") { }
            TrailingAction(title: "Add", systemImage: "plus") { }
        }
    }
}
