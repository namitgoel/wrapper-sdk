# BenefitsSDK

A Swift Package Manager library for integrating benefits functionality into iOS and macOS applications.

## Requirements

- iOS 13.0+ / macOS 10.15+
- Xcode 12.0+
- Swift 5.9+

## Installation

### Swift Package Manager

Add BenefitsSDK as a dependency in your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/your-org/benefits-sdk.git", from: "1.0.0")
]
```

Or add it through Xcode:

1. File → Add Package Dependencies
2. Enter the repository URL: `https://github.com/your-org/benefits-sdk.git`
3. Select the version and add to your target

## Usage

### Basic Setup

```swift
import BenefitsSDK

// Configure the SDK
let configuration = BenefitsConfiguration(
    clientId: "your-client-id",
    environment: .production,
    enableLogging: false
)

// Initialize the SDK
BenefitsSDK.shared.initialize(with: configuration)
```

### Configuration Options

- `clientId`: Your unique client identifier
- `environment`: `.development`, `.staging`, or `.production`
- `enableLogging`: Enable/disable SDK logging

## License

This project is licensed under the MIT License.
