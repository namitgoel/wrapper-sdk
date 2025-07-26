// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HSBCPaymentsSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HSBCPaymentsSDK",
            targets: ["HSBCPaymentsSDK", "HSBCPaymentsSDKDependencies"]
        )
    ],
    dependencies: [
        .package(name: "HyperSDK", url: "https://github.com/juspay/hypersdk-ios.git", .exact("2.2.4")),
    ],
    targets: [
        .binaryTarget(
            name: "HSBCPaymentsSDK",
            url: "https://92837e2bf93f.ngrok-free.app/wrapper-output/HSBCPaymentsSDK.zip",
            checksum: "1f41f2da40fabc81e0598681c260524eebfc9104631d9a0155f3dc8eef225a51"
        ),
        .target(
            name: "HSBCPaymentsSDKDependencies",
            dependencies: [
                .product(name: "HyperSDK", package: "HyperSDK")
            ]
        )
    ]
)