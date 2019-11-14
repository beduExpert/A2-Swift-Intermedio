//
//  Food.swift
//  ARCapp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import Foundation

class Food {

  weak var animal: Animal?
  
  init() {
    print("Food was created")
  }

  func addAnimal(_ animal: Animal) {
    self.animal = animal
  }

  deinit {
    print("Deallocating animal")
  }
}
