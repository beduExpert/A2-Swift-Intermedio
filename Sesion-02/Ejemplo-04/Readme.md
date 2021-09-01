
`Desarrollo Mobile` > `Swift Intermedio` 

## Protocolos y Herencia

### OBJETIVO

- Definir protocolos, con sus propiedades y métodos así como tambien implementar herencia y extensiones.

#### REQUISITOS

1. Xcode.
2. Conceptos bien entendidos de Herencia y Protocolos.

#### DESARROLLO

En un nuevo Playground iremos definiendo estas carácteristicas mediante Protocolos.

```
Pingüino:

puede_nadar
soporta_frio
no_puede_volar
plumaje
```

```
Aguila:

puede_volar
buena_vision
plumaje
no_puede_nadar
```
No necesitamos saber cómo son las plumas, solo sabemos que tienen plumas.

3. Mediante Extensions, definimos que valores tendran las variables de si puede volar o nadar.

4. Finalmente, creamos una estructura para Pinguino y una para Aguila, se pueden agregar tantas como se deseen.

5. Finalmente el código seria:

```
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
```
```
// Implementando:
let pinguinito = Penguin(feathers: true)
print(pinguinito.canFly)
print(pinguinito.canSwim)

let aguilita = Eagle(feathers: true)
print(aguilita.canFly)
print(aguilita.canSwim)
```

