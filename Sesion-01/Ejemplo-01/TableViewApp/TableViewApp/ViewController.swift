//
//  ViewController.swift
//  TableViewApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let tv = UITableView()
    tv.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
    self.view.addSubview(tv)
    
  }
}
