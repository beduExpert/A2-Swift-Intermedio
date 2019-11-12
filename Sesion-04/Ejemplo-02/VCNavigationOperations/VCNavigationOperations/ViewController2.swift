//
//  ViewController2.swift
//  VCNavigationOperations
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }

  @IBAction func show(_ sender: Any) {
    let vc = storyboard?.instantiateViewController(identifier: "VC3") as! ViewController3
    self.navigationController?.pushViewController(vc, animated: true)
  }
  
  @IBAction func dismiss(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
  }
}
