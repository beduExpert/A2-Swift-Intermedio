//
//  ViewController.swift
//  StacksApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func buttonAction(_ sender: Any) {
    showVC2()
  }
  
  private func showVC2() {
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    let viewControllerB = storyBoard.instantiateViewController(withIdentifier: "VC2") as! ViewControllerB
    self.navigationController?.pushViewController(viewControllerB, animated: true)
  }
}

