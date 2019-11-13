//
//  ViewController.swift
//  ViewLifeCycle
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    let subview = CustomView()
    subview.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
    subview.backgroundColor = .blue
    self.view.addSubview(subview)
  }
}

