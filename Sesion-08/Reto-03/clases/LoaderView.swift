//
//  LoaderViewController.swift
//  TheMovieApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit
import Lottie

public class LoaderView: UIView {
  
  var name: String?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  func play() {
    guard let name = name else { return }
    let animationView = AnimationView(name: name)
    animationView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
    animationView.center = self.center
    animationView.animationSpeed = 0.2
    animationView.contentMode = .scaleAspectFill
    self.addSubview(animationView)
    animationView.play()
    animationView.translatesAutoresizingMaskIntoConstraints = false
    animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    animationView.widthAnchor.constraint(equalToConstant: self.frame.width).isActive = true
    animationView.heightAnchor.constraint(equalToConstant: self.frame.height).isActive = true
  }
}
