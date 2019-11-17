
`Desarrollo Mobile` > `Swift Intermedio` 

## Postwork: Memory Leak Fix

### OBJETIVO

- Con este Postwork se pretende retar al estudiante para que en un futuro pueda resolver el problema de Memory Leaks.

#### REQUISITOS

1. Xcode 11
2. [Template](template) proporcionado

#### DESARROLLO

1. Abrir el template adjunto, examinar el código y modificarlo para evitar que haya **Memory Leaks**.

<details>
	<summary>Solución</summary>
	<p> Respuesta: </p>

```
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
  weak var baby: Baby?
  init() { }
}
```
</details>


