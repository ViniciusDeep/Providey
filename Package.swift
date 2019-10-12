// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Providey",
    products: [
        .library(
            name: "Providey",
            targets: ["Providey"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Providey",
            dependencies: []),
        .testTarget(
            name: "ProvideyTests",
            dependencies: ["Providey"]),
    ]
)
