import SwiftUI
import WebKit

public class WebViewSDK {
    // Singleton instance for easy access
    public static let shared = WebViewSDK()
    
    private init() {}
    
    // Public method to present WebView
    public func presentWebView(from viewController: UIViewController, 
                             url: URL,
                             config: WebViewConfig? = nil) {
        let webConfig = config ?? WebViewConfig(url: url)
        let hostingController = UIHostingController(
            rootView: WebViewContainer(url: url, config: webConfig)
                .edgesIgnoringSafeArea(.all)
        )
        hostingController.modalPresentationStyle = .fullScreen
        viewController.present(hostingController, animated: true)
    }
    
    // Alternative SwiftUI method
    public func makeWebView(url: URL, config: WebViewConfig? = nil) -> some View {
        WebViewContainer(url: url, config: config ?? WebViewConfig(url: url))
    }
}

// Configuration options for the WebView
public struct WebViewConfig {
    public var url: URL
    public var allowsBackForwardNavigation: Bool
    public var showsProgressBar: Bool
    public var customUserAgent: String?
    
    public init(url: URL, 
                allowsBackForwardNavigation: Bool = true,
                showsProgressBar: Bool = true,
                customUserAgent: String? = nil) {
        self.url = url
        self.allowsBackForwardNavigation = allowsBackForwardNavigation
        self.showsProgressBar = showsProgressBar
        self.customUserAgent = customUserAgent
    }
}
