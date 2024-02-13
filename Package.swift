// swift-tools-version: 5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "attribution",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "PaltaLibAttribution",
            targets: ["PaltaLibAttribution"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", from: "6.8.0")
    ],
    targets: [
        .target(
            name: "PaltaLibAttribution",
            dependencies: [
                .product(name: "AppsFlyerLib", package: "AppsFlyerFramework")
            ]
        ),
        .testTarget(
            name: "PaltaLibAttributionTests",
            dependencies: ["PaltaLibAttribution"]
        ),
    ]
)
