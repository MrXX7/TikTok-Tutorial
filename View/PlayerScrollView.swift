//
//  PlayerScrollView.swift
//  TikTok Tutorial
//
//  Created by Oncu Ohancan on 7.05.2022.
//

import SwiftUI

struct PlayerScrollView: UIViewRepresentable {
    
    @Binding var data: [Video]
    
    func makeUIView(context: Context) -> UIScrollView {
        let view = UIScrollView()
        
        let childView = UIHostingController(rootView: PlayerView(data: self.$data))
        
        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        view.addSubview(childView.view)
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        
        view.contentInsetAdjustmentBehavior = .never
        view.isPagingEnabled = true
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
