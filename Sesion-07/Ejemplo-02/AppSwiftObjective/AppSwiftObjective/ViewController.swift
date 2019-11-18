//
//  ViewController.swift
//  AppSwiftObjective
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let person: Person = Person()
    person.age = 28
    person.name = "Bedu"
    person.getAge()
    person.printName()
  }


}

