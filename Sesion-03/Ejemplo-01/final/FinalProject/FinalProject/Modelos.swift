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
