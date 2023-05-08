//
//  WebView.swift
//  Athlinic
//
//  Created by Rajif Afif on 08/05/23.
//

import SwiftUI
import WebKit

let youtubeURL = URL(string: "https://www.youtube.com/embed/dQw4w9WgXcQ")!

struct WebView: UIViewRepresentable {
    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: youtubeURL))
    }
}
