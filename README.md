# WebView SDK

A lightweight SDK for integrating web content into iOS applications.

## Installation

### Swift Package Manager

Add the following dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "your-repository-url", from: "1.0.0")
]
```

### CocoaPods

Add the following to your Podfile:

```ruby
pod 'WebViewSDK'
```

## Usage

### UIKit

```swift
import WebViewSDK

class YourViewController: UIViewController {
    func showWebContent() {
        // Simple usage
        WebViewSDK.shared.presentWebView(
            from: self,
            url: URL(string: "https://your-url.com")!
        )
    }
}
```

### SwiftUI

```swift
import WebViewSDK
import SwiftUI

struct YourView: View {
    var body: some View {
        // Simple usage
        WebViewSDK.shared.makeWebView(url: URL(string: "https://your-url.com")!)
    }
}
```

## Features

- Simple integration with both UIKit and SwiftUI
- Customizable navigation options
- Progress tracking
- Error handling
- Support for both modal and embedded presentations

## Requirements

- iOS 14.0+
- Swift 5.0+
- Xcode 13.0+

## License

This SDK is available under the MIT license.
