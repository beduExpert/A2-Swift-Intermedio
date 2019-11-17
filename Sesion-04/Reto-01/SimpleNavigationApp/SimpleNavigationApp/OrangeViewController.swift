//
//  OrangeViewController.swift
//  SimpleNavigationApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func goBack(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
  }

}
