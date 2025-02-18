import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    @Environment(\.dismiss) var dismiss
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct WebViewContainer: View {
    let url: URL
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            WebView(url: url)
                .navigationBarItems(leading: Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                })
        }
    }
}
