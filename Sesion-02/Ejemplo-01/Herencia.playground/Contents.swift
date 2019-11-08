import UIKit

class Car {
  var wheels: Int
  var doors: Int
  var color: UIColor
  var motor: String
  
  init(wheels: Int, doors: Int, color: UIColor, motor: String) {
    self.wheels = wheels
    self.doors = doors
    self.color = color
    self.motor = motor
  }
}

class Taxi: Car {
  var rate: Int
  var hasPassenger: Bool

  init(rate: Int, hasPassenger: Bool) {
    self.rate = rate
    self.hasPassenger = hasPassenger
    super.init(wheels: 4, doors: 5, color: .yellow, motor: "taxi-motor")
  }
}


