//
//  ViewController.swift
//  Play-Video-From-URL
//
//  Created by Alex Paul on 1/20/21.
//

import AVKit
import AVFoundation

class MovieViewController: UIViewController {
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    let url = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!
    playVideo(url: url)
  }
  
  func playVideo(url: URL) {
    let player = AVPlayer(url: url)
    let vc = AVPlayerViewController()
    vc.player = player
    present(vc, animated: true) { vc.player?.play() }
  }
}

