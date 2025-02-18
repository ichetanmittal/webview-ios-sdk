// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "WebViewSDK",
    platforms: [
        .iOS(.v15) // Updated to iOS 15 to match the required features
    ],
    products: [
        .library(
            name: "WebViewSDK",
            targets: ["WebViewSDK"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WebViewSDK",
            dependencies: [],
            path: "Sources/WebViewSDK") // Updated path
    ]
)
