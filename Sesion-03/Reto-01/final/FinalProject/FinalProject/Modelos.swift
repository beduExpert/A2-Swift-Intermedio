//
//  Modelos.swift
//  FinalProject
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import Foundation

struct Account {
  let user: String
  let pass: String
}

struct Registered {
  let account1: Account = Account(user: "User", pass: "Password")
}

struct Coordinates {
  let angel: (name: String, subtitle: String, lat: Double, long: Double)
    =  ("El Ángel", "de la Independencia", 19.426980, -99.167696)

  let palace: (name: String, subtitle: String, lat: Double, long: Double)
    =  ("Palacio", "de Bellas Artes", 19.435352, -99.141055)
}
