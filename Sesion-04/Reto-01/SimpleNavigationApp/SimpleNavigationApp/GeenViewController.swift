//
//  GeenViewController.swift
//  SimpleNavigationApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class GeenViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func gotoMainView(_ sender: Any) {
    self.navigationController?.popToRootViewController(animated: true)
  }
}
