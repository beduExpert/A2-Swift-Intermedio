//
//  DetailViewController.swift
//  TavleViewDetail
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  var text: String?
  @IBOutlet weak var message: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.message.text = text
    // Do any additional setup after loading the view.
  }

}
