import UIKit

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

  var baby: Baby?
  
  init() {
  }
}
