//
//  ViewController.swift
//  CarthageApp
//

import UIKit
import Lottie

class ViewController: UIViewController {
  
  @IBOutlet weak var loaderView: LoaderView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    loaderView.name = "fish"
    loaderView.play()
    Animator.show(view: loaderView)
  }
}

