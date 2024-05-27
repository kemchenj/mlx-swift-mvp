// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mlx-swift-mvp",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(name: "mlx-swift-mvp", targets: ["mlx-swift-mvp"]),
    ],
    dependencies: [
        // .package(url: "https://github.com/ml-explore/mlx-swift", from: "0.10.0")
        .package(
            url: "https://github.com/ml-explore/mlx-swift", 
            revision: "05cb6332c9db50cb7d07e8b14b197830d75a6eee" // the latest commit in main branch
        )
    ],
    targets: [
        .executableTarget(
            name: "mlx-swift-mvp",
            dependencies: [
                .product(name: "MLX", package: "mlx-swift"),
            ],
            sources: ["main.swift"]
        )
    ]
)
