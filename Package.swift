// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Sample",
    platforms: [
        .iOS("16.4")
    ],
    products: [
        .library(
            name: "Sample",
            targets: ["Sample"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-async-algorithms.git", exact: "1.0.0"),
        .package(url: "https://github.com/apple/swift-log", exact: "1.6.1"),
    ],
    targets: [
        .target(
            name: "Sample",
            dependencies: [
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
                .product(name: "Logging", package: "swift-log"),
            ]
        ),
    ]
)
