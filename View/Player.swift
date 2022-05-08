//
//  Player.swift
//  TikTok Tutorial
//
//  Created by Oncu Ohancan on 7.05.2022.
//

import SwiftUI
import AVKit

struct PlayerView: View {

    @Binding var data: [Video]

var body: some View {
    VStack(spacing: 0) {
        ForEach(0 ..< self.data.count) { index in
            ZStack {
                Player(player: data[index].player)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .offset(y: -5)
                if self.data[index].replay {
                    Button(action: {
                        self.data[index].replay = false
                        self.data[index].player.seek(to: .zero)
                        self.data[index].player.play()
                    }, label: {
                        Image(systemName: "goforward")
                            .resizable()
                            .frame(width: 55, height: 60)
                            .foregroundColor(.white)
                            })
                        }
                    }
                }
            }
     .onAppear {
        self.data[0].player.play()
         
        self.data[0].player.actionAtItemEnd = .none
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.data[0].player.currentItem, queue: .main) {_ in
            self.data[0].replay = true
               }
            }
        }
    }

struct Player: UIViewControllerRepresentable {
    
    var player: AVPlayer
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
        return view
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
         
    }
}
