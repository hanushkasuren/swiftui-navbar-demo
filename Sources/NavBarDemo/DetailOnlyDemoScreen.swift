//
//  DetailOnlyDemoScreen.swift
//  NavBarDemo
//
//  Created by Hanushka Suren on 27/09/2026.
//

import SwiftUI

/// A plain detail screen. Back button and one trailing action only,
/// no segmented control, because this screen has nothing to filter.
struct DetailOnlyDemoScreen: View {
    let pop: () -> Void

    var body: some View {
        List {
            Text("A detail screen with just a back button and one trailing action.")
            Text("The segmented header used on the list screen is a separate, opt in piece. It is not part of the shared toolbar, so a screen like this one simply does not add it.")
        }
        .navigationTitle("Detail Only")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            BackButton(action: pop)
            TrailingAction(title: "Edit", systemImage: "pencil") { }
        }
    }
}
