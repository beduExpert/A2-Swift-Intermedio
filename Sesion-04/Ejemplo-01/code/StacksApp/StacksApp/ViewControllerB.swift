//
//  ViewControllerB.swift
//  StacksApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func buttonAction(_ sender: Any) {
    //removelast()
    removeAll()
  }
  
  private func removelast() {
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    let viewControllerC = storyBoard.instantiateViewController(withIdentifier: "VC3") as! ViewControllerC
    var stack = self.navigationController?.viewControllers
    stack!.removeLast()
    stack!.append(viewControllerC)
    self.navigationController?.setViewControllers(stack!, animated: true)
  }
  
  private func removeAll() {
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    let viewControllerC = storyBoard.instantiateViewController(withIdentifier: "VC3") as! ViewControllerC
    var stack = self.navigationController?.viewControllers
    stack!.removeAll()
    stack!.append(viewControllerC)
    self.navigationController?.setViewControllers(stack!, animated: true)
  }
}
