
import UIKit

protocol Car {
  var color: UIColor { get }
  var doors: Int { get set }
  func run()
  func hasGas() -> Bool
}

protocol Engine {
  var motor: String { get set }
}

class BMW: Car, Engine {
  var motor: String
  var color: UIColor
  var doors: Int
  
  init(color: UIColor, doors: Int, motor: String) {
    self.color = color
    self.doors = doors
    self.motor = motor
  }
  
  func run() {
    print("run run")
  }
  
  func hasGas() -> Bool {
    return true
  }
}


let i3: BMW = BMW(color: .black, doors: 5, motor: "V8")
i3.run()
i3.hasGas()
