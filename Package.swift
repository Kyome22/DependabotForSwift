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
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", exact: "1.12.1"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "10.28.1"),
    ],
    targets: [
        .target(
            name: "Sample",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
            ]
        ),
    ]
)
