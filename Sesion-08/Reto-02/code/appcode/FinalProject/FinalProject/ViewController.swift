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
  @IBOutlet weak var animatedView: LoaderView!
  
  // Models
  let model: Registered = Registered()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = true
    self.navigationController!.view.backgroundColor = UIColor.clear
    self.navigationController?.navigationBar.backgroundColor = UIColor.clear
    animatedView.name = "fish"
    animatedView.play()
    Animator.show(view: animatedView)
  }
  
  @IBAction func login(_ sender: Any) {
    //login success action
    if model.account1.user == user.text && model.account1.pass == password.text {
      imageView.image = UIImage(named: "profile")
      goToMainViewController()
    } else {
      imageView.image = UIImage(named: "user1")
    }
  }
  
  @IBAction func register(_ sender: Any) {
    let vc = storyboard?.instantiateViewController(identifier: "registerVC") as! AccountRegisterViewController
    self.navigationController?.pushViewController(vc, animated: true)
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

