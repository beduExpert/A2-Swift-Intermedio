
import UIKit

protocol Car {
  var color: UIColor { get }
  var doors: Int { get set }
  func run()
  func hasGas() -> Bool
}

class BMW: Car {
  
  var color: UIColor
  var doors: Int
  
  init(color: UIColor, doors: Int) {
    self.color = color
    self.doors = doors
  }
  
  func run() {
    print("run run")
  }
  
  func hasGas() -> Bool {
    return true
  }
}


let i3: BMW = BMW(color: .black, doors: 5)
i3.run()
i3.hasGas()
