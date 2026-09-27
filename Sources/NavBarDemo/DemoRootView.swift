//
//  DemoRootView.swift
//  NavBarDemo
//
//  Created by Hanushka Suren on 27/09/2026.
//

import SwiftUI

enum Route: Hashable {
    case groupedTrailing
    case multipleTrailing
    case detailOnly
    case listWithSegments
}

struct DemoRootView: View {
    @State private var path: [Route] = []

    var body: some View {
        NavigationStack(path: $path) {
            List {
                NavigationLink("Grouped trailing items", value: Route.groupedTrailing)
                NavigationLink("Multiple trailing items, no grouping", value: Route.multipleTrailing)
                NavigationLink("Detail screen, no segmented control", value: Route.detailOnly)
                NavigationLink("List screen with segmented header", value: Route.listWithSegments)
            }
            .navigationTitle("Nav Bar Demo")
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .groupedTrailing:
                    GroupedTrailingDemoScreen(pop: { path.removeLast() })
                case .multipleTrailing:
                    MultipleTrailingDemoScreen(pop: { path.removeLast() })
                case .detailOnly:
                    DetailOnlyDemoScreen(pop: { path.removeLast() })
                case .listWithSegments:
                    ListWithSegmentsDemoScreen(pop: { path.removeLast() })
                }
            }
        }
    }
}
