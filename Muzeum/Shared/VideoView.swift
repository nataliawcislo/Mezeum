//
//  VideoView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import Foundation
import SwiftUI
import WebKit

struct VideoView : UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
 
