import UIKit

public class Person {
  private var name: String
  private var age: Int
  private var height: Float
  private var weight: Float
  
  init(name: String, age: Int, height: Float, weight: Float) {
    self.name = name
    self.age = age
    self.height = height
    self.weight = weight
  }
  
  public func run() {
    print("Person is running")
  }
}

