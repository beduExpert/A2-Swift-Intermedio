//
//  Animal.swift
//  ARCapp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import Foundation

class Animal {
  let name: String
  weak var food: Food?
  
  init(name: String) {
    self.name = name
    print("Animal \(name) was created")
  }
  
  func addFood(_ food: Food) {
    self.food = food
  }

  deinit {
    print("Deallocating \(name)")
  }
}



