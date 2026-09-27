# SwiftUI Nav Bar Demo

A small runnable project for the toolbar and segmented control pattern used in the companion article, "Rebuilding the SwiftUI Navigation Bar for iOS 26. Here Is What I Learned."

Four screens, each isolating one part of the pattern.

- Grouped trailing items, ToolbarItemGroup plus ToolbarSpacer
- Multiple trailing items with no grouping
- A detail screen with no segmented control
- A list screen with a segmented header

## Requirements

- Xcode 26 or later
- An iOS 26 simulator or device, ToolbarSpacer needs it

## Run it

This project is set up for XcodeGen, a tool that turns a plain YAML file into a real Xcode project.

1. Install XcodeGen once, with Homebrew.

   brew install xcodegen

2. From this folder, generate the project.

   xcodegen generate

3. Open it.

   open NavBarDemo.xcodeproj

4. Pick an iOS 26 simulator, for example iPhone 16 Pro, and run.

If you would rather not install XcodeGen, create a new Xcode project named NavBarDemo, iOS App, SwiftUI, Swift, delete its generated ContentView.swift, replace its generated NavBarDemoApp.swift with the one in Sources/NavBarDemo, and add the remaining files from that folder. Set the deployment target to iOS 26.

## What each screen shows

Grouped trailing items is the ToolbarItemGroup and ToolbarSpacer example from the article. Share and Favorite sit in one glass group, the spacer opens a gap, and Add sits in its own group.

Multiple trailing items shows two plain ToolbarItem entries with no grouping between them. With nothing to split them, they share one glass background by default.

Detail screen shows a back button and one trailing action with nothing else, the segmented header is not part of the shared toolbar.

List with segmented header shows the reusable SegmentedHeader view placed under the bar, switching between Active and Historical.
