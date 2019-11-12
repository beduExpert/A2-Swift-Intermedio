//
//  ViewController.swift
//  VCNavigationOperations
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func show(_ sender: Any) {
    let vc = self.storyboard?.instantiateViewController(identifier: "VC2") as! ViewController2
    //self.present(vc, animated: true, completion: nil)
    self.navigationController?.pushViewController(vc, animated: true)
  }
  
}

