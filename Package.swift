// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModalPresenter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "ModalPresenter", targets: ["ModalPresenter"]),
    ],
    dependencies: [                
        .package(url: "https://github.com/siteline/SwiftUI-Introspect.git", from: "1.3.0"),
    ],
    targets: [
        .target(
            name: "ModalPresenter",
            dependencies: [.product(name: "SwiftUIIntrospect", package: "SwiftUI-Introspect")],
            path: "Sources"
        ),
        .testTarget(
            name: "ModalPresenterTests",
            dependencies: ["ModalPresenter"]
        ),
    ]
)
