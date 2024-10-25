// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AsyncExtensions",
    platforms: [
            .iOS(.v13),
            .macOS(.v10_15),
            .tvOS(.v13),
            .watchOS(.v6)
        ],
    products: [
        .library(
            name: "AsyncExtensions",
            targets: ["AsyncExtensions"]),
    ],
    dependencies: [.package(url: "https://github.com/apple/swift-collections.git", .upToNextMajor(from: "1.0.3"))],
    targets: [
        .target(
            name: "AsyncExtensions",
            dependencies: [.product(name: "Collections", package: "swift-collections")],
            path: "Sources"
//            ,
//            swiftSettings: [
//              .unsafeFlags([
//                "-Xfrontend", "-enable-actor-data-race-checks",
//                "-Xfrontend", "-strict-concurrency=complete"
//              ])
//            ]
        ),
        .testTarget(
            name: "AsyncExtensionsTests",
            dependencies: ["AsyncExtensions"],
            path: "Tests"),
    ]
)
