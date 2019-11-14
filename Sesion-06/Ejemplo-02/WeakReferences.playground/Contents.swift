
import UIKit

class MyObject {
  init() {
  }
}

var object: MyObject? = MyObject()
weak var reference = object

// set reference to nil
object = nil

if reference == nil {
  print("No hay memory leak")
} else {
  print("aun existe")
}


