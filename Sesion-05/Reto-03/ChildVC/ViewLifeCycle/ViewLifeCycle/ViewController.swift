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
    let parent = ViewControllerB()
    let child = ViewControllerC()
    parent.view = UIView(frame: CGRect(x: 50.0, y: 50.0, width: 200.0, height: 200.0))
    child.view = UIView(frame: CGRect(x: 50.0, y: 50.0, width: 100.0, height: 100.0))

    parent.view.backgroundColor = .green
    child.view.backgroundColor = .red
    
    parent.view.addSubview(child.view)
    parent.addChild(child)
    child.didMove(toParent: parent)
    
    self.view.addSubview(parent.view)
  }
}

