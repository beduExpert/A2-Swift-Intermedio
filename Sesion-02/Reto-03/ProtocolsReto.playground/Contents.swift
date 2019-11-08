import UIKit

protocol Bird {
  var feathers: Bool { get set }
  var canFly: Bool { get }
  var canSwim: Bool { get }
}

protocol Swimmable {
  var canSwim: Bool { get }
}

protocol Flyable {
  var canFly: Bool { get }
}

extension Bird {
  var canFly: Bool {
    return self is Flyable
  }
  
  var canSwim: Bool {
    return self is Swimmable
  }
}


struct Penguin: Bird, Swimmable {
  var feathers: Bool
}

struct Eagle: Bird, Flyable {
  var feathers: Bool
}

let pinguinito = Penguin(feathers: true)
print(pinguinito.canFly)
print(pinguinito.canSwim)

let aguilita = Eagle(feathers: true)
print(aguilita.canFly)
print(aguilita.canSwim)
