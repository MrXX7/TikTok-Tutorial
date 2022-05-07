//
//  Video.swift
//  TikTok Tutorial
//
//  Created by Oncu Ohancan on 7.05.2022.
//

import SwiftUI
import AVKit

struct Video: Identifiable {
    var id: Int
    var player: AVPlayer
    var replay: Bool
}
