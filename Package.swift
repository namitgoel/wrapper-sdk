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
            url: "https://testingnew12.s3.amazonaws.com/HSBCPaymentsSDK.zip",
            checksum: "f1d138d8ac79a05d726889ccc58d87810bc6666472197d2a197e1cae8d892456",
            publicHeadersPath: "include"
        ),
        .target(
            name: "HSBCPaymentsSDKDependencies",
            dependencies: [
                .product(name: "HyperSDK", package: "HyperSDK")
            ]
        )
    ]
)