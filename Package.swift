// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "WebViewSDK",
    platforms: [
        .iOS(.v14)
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
            path: "webviewSDK")
    ]
)
