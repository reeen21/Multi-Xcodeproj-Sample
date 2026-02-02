// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "View",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "View",
            targets: ["View"]
        ),
    ],
    dependencies: [
        .package(path: "../Repository"),
    ],
    targets: [
        .target(
            name: "View",
            dependencies: ["Repository"]
        ),
    ]
)
