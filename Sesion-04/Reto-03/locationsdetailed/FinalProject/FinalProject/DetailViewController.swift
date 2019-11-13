//
//  DetailViewController.swift
//  FinalProject
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var name: UILabel!
  var nameValue: String?

  override func viewDidLoad() {
    super.viewDidLoad()
    self.name.text = nameValue
  }
}
