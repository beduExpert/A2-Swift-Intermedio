//
//  ViewController3.swift
//  VCNavigationOperations
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func dismiss(_ sender: Any) {
    // pop to root view controller
    //self.navigationController?.popToRootViewController(animated: true)
    
    //Pop to specific view controller
    let stack = self.navigationController?.viewControllers
    guard let vc = stack?.first else { return }
    self.navigationController?.popToViewController(vc, animated: true)
  }
  
}
