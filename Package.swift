// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CustomApollo",
  platforms: [
    .iOS(.v12),
    .macOS(.v10_14),
    .tvOS(.v12),
    .watchOS(.v5)
  ],
  products: [
    .library(name: "CustomApollo", targets: ["CustomApollo"])
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "CustomApollo",
      dependencies: [
        "CustomApolloAPI"
      ],
      exclude: [
        "Info.plist"
      ]),
    .target(
      name: "CustomApolloAPI",
      dependencies: [],
      exclude: [
        "Info.plist"
      ]), 
  ]
)
