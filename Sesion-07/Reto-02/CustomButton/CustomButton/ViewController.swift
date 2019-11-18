//
//  ViewController.swift
//  CustomButton
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var button: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    CustomButton.setup(button)
    // Do any additional setup after loading the view.
  }


}

