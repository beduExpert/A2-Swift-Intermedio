//
//  ViewController.swift
//  Memo
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let baby = Baby(name: "Richie")
    let toy = Toy()
    baby.add(toy)
  }
}

class Baby {

  let name: String
  var toys: [Toy] = []

  init(name: String) {
    self.name = name
  }

  func add(_ toy: Toy) {
    toy.baby = self
    toys.append(toy)
  }
}

class Toy {
  weak var baby: Baby?
  init() {}
}


