//
//  ViewController.swift
//  YouTubeApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController {
  
  @IBOutlet weak var videoView: YTPlayerView!
  
  public let YouTubeParams: [String: Any] = [
    "autoplay": 0,
    "playsinline" : 1,
    "enablejsapi": 1,
    "wmode": "transparent",
    "controls": 0,
    "showinfo": 0,
    "rel": 0,
    "fs" : 1,
    "modestbranding": 0,
    "iv_load_policy": 3
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.videoView.delegate = self
  }
  
  @IBAction func watch(_ sender: Any) {
    let key = "velPquCnw7k"
    self.videoView.load(withVideoId: key,
                        playerVars: YouTubeParams)
  }
  
}

// MARK: - YOUTUBE VIDEO PROTOCOLS
extension ViewController : YTPlayerViewDelegate {
  func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
    self.videoView.playVideo()
  }
}
