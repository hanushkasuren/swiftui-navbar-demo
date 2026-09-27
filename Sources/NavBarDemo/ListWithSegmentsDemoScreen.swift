//
//  ListWithSegmentsDemoScreen.swift
//  NavBarDemo
//
//  Created by Hanushka Suren on 27/09/2026.
//

import SwiftUI

enum DemoFilter: String, CaseIterable, Identifiable {
    case active, historical
    var id: Self { self }
    var title: String { rawValue.capitalized }
}

/// A generic segmented header. Any CaseIterable, Identifiable enum can
/// drive it, so the same view works on every screen that needs one.
struct SegmentedHeader<Segment: CaseIterable & Hashable & Identifiable>: View {
    @Binding var selection: Segment
    let title: (Segment) -> String

    var body: some View {
        VStack(spacing: 0) {
            Picker("Section", selection: $selection) {
                ForEach(Array(Segment.allCases)) { segment in
                    Text(title(segment)).tag(segment)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 16)
            .padding(.vertical, 11)
        }
    }
}

/// A list screen that actually needs a filter. The segmented header sits
/// in the screen's own content, under the bar, not inside the toolbar.
struct ListWithSegmentsDemoScreen: View {
    let pop: () -> Void
    @State private var filter: DemoFilter = .active

    var body: some View {
        VStack(spacing: 0) {
            SegmentedHeader(selection: $filter, title: \.title)
            List {
                ForEach(1...6, id: \.self) { index in
                    Text("\(filter.title) row \(index)")
                }
            }
            .listStyle(.insetGrouped)
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Records")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            BackButton(action: pop)
        }
    }
}
