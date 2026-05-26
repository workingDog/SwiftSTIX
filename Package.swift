// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSTIX",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8),
    ],
    products: [
        .library(
            name: "STIX2",
            targets: ["STIX2"]
        ),
        .library(
            name: "SwiftSTIX",
            targets: ["STIX2"]
        ),
    ],
    targets: [
        .target(
            name: "STIX2"
        ),
        .testTarget(
            name: "STIX2Tests",
            dependencies: ["STIX2"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
