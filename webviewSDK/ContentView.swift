//
//  ContentView.swift
//  webviewSDK
//
//  Created by Chetan Mittal on 2025/02/19.
//

import SwiftUI

struct ContentView: View {
    @State private var showWebView = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Testing Webview") {
                showWebView = true
            }
        }
        .padding()
        .sheet(isPresented: $showWebView) {
            WebViewContainer(url: URL(string: "https://xaults.com")!)
        }
    }
}

#Preview {
    ContentView()
}
