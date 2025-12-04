// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdventOfCode",
    products: [
        .executable(name: "AdventOfCode", targets: ["AdventOfCode"])
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "AdventOfCode",
            dependencies: ["Days", "Utilities"]
        ),
        .target(name: "Days", dependencies: ["Utilities"]),
        .target(name: "Utilities"),
        .testTarget(
            name: "AdventOfCodeTests",
            dependencies: ["Days"],
            resources: [.copy("Inputs")]
        )
    ]
)
