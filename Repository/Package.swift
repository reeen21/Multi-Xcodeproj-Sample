// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Repository",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "Repository",
            targets: ["Repository"]
        ),
    ],
    targets: [
        .target(name: "Repository"),
    ]
)
