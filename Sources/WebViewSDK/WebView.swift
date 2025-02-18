import SwiftUI
import WebKit

internal struct WebView: UIViewRepresentable {
    let url: URL
    let config: WebViewConfig
    var onDismiss: (() -> Void)?
    
    func makeUIView(context: Context) -> WKWebView {
        let preferences = WKWebpagePreferences()
        preferences.allowsContentJavaScript = true
        
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = preferences
        
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.allowsBackForwardNavigationGestures = config.allowsBackForwardNavigation
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

public struct WebViewContainer: View {
    let url: URL
    let config: WebViewConfig
    @Environment(\.dismiss) private var dismiss
    
    public init(url: URL) {
        self.url = url
        self.config = WebViewConfig(url: url)
    }
    
    public init(url: URL, config: WebViewConfig) {
        self.url = url
        self.config = config
    }
    
    public var body: some View {
        NavigationView {
            VStack {
                Text("WebView SDK Test")
                    .font(.headline)
                    .padding()
                
                WebView(url: url, config: config, onDismiss: {
                    dismiss()
                })
                .navigationBarItems(leading: Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "xmark")
                        Text("Close")
                    }
                })
            }
        }
    }
}
