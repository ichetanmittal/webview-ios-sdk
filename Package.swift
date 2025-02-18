// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "webview-ios-sdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "WebViewSDK",
            type: .dynamic,
            targets: ["WebViewSDK"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WebViewSDK",
            dependencies: [],
            path: "Sources/WebViewSDK")
    ]
)
