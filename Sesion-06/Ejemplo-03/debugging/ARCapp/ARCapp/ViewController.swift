//
//  ViewController.swift
//  ARCapp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let food: Food = Food()
    let animal: Animal = Animal(name: "Toby")
    food.addAnimal(animal)
    animal.addFood(food)
  }
}

