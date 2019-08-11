// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Localizer",
    products: [
        .library(name: "Localizer", targets: ["Localizer"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Localizer", dependencies: [], path: "Classes"),
        .testTarget(name: "LocalizerTests", dependencies: ["Localizer"]),
    ]
)
