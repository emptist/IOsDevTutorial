//
//  WebKitContents.swift
//  IOsDevTutorial
//
//  Created by jk on 2021/4/30.
//

import SwiftUI
import WebKit

struct WebKitContents: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<WebKitContents>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebKitContents>) -> Void {
        let request = URLRequest(url: URL(string:"https://www.apple.com")!)
        uiView.load(request)
    }
}

struct WebKitView_Previews: PreviewProvider {
    static var previews: some View {
        WebKitContents()
    }
}
