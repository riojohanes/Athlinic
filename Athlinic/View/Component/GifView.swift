//
//  GifView.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI
import WebKit

struct GifView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    let gifName: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.contentMode = .scaleAspectFit
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let gifURL = Bundle.main.url(forResource: gifName, withExtension: "gif") else { return }
        let request = URLRequest(url: gifURL)
        uiView.load(request)
    }
}
