//
//  ViewController.swift
//  FinalProject
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var user: UITextField!
  @IBOutlet weak var password: UITextField!
  @IBOutlet weak var imageView: UIImageView!
  
  let myUser = "Ricardo"
  let myPassword = "Password"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = true
    self.navigationController!.view.backgroundColor = UIColor.clear
    self.navigationController?.navigationBar.backgroundColor = UIColor.clear
  }
  
  @IBAction func login(_ sender: Any) {
    //login success action
    if myUser == user.text && myPassword == password.text {
      imageView.image = UIImage(named: "profile")
      goToMainViewController()
    } else {
      imageView.image = UIImage(named: "user1")
    }
  }
  
  func goToMainViewController() {
    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController
    self.navigationController?.pushViewController(vc!, animated: true)
  }
}

extension UIViewController {
  // Oculta teclado al tocar en la pantalla
  override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
}

