// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// See https://github.com/apple/swift-evolution/blob/master/proposals/0208-package-manager-system-library-targets.md
let package = Package(
    name: "LibUV",
    products: [
        .library(name: "LibUV", targets: ["LibUV"]),
    ],
    targets: [
        .target(
            name: "LibUV",
            dependencies: ["CLibUV"]),
        .systemLibrary(
            name: "CLibUV")
    ]
)
