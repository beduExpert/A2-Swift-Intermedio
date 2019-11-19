//
//  AccountRegisterViewController.swift
//  FinalProject
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class AccountRegisterViewController: UIViewController {
  
  @IBOutlet weak var user: UITextField!
  @IBOutlet weak var password: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func register(_ sender: Any) {
    //register success action
    dismiss(animated: true, completion: nil)
  }

}
