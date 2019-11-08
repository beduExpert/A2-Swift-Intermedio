import UIKit

protocol Bird {
  var feathers: Bool { get }
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

  var feathers: Bool {
    return true
  }

  var canFly: Bool {
    return self is Flyable
  }
  
  var canSwim: Bool {
    return self is Swimmable
  }
}

protocol Beauty {
  var isCute: Bool { get set }
  var isElegant: Bool { get set }
}

protocol Resistant {
  var cold: Bool { get set }
}

protocol Power {
  var powerful: Bool { get set }
}

struct Penguin: Bird, Swimmable, Beauty, Resistant {
  var isElegant: Bool
  var isCute: Bool
  var cold: Bool
}

struct Eagle: Bird, Flyable, Power, Beauty {
  var powerful: Bool
  var isCute: Bool
  var isElegant: Bool
}

let pinguinito = Penguin(isElegant: true, isCute: true, cold: true)
print(pinguinito.canFly)
print(pinguinito.canSwim)

let aguilita = Eagle(powerful: true, isCute: true, isElegant: false)
print(aguilita.canFly)
print(aguilita.canSwim)
