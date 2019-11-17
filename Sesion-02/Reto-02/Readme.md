 

`Desarrollo Mobile` > `Swift Intermedio` 
	
## Creación de Protocolos 

### OBJETIVO 

- Reforzar la sintaxis aprendida sobre protocolos y clases. 

#### REQUISITOS 

1. Terminado el **Ejemplo-03**.

#### DESARROLLO

1. Crear un protocolo adicional similar al creado en el **Ejemplo-03**.

2. Crear una nueva clase, esta clase debe heredar de la clase previamente definida y conformar todos los protocolos escritos en el playground.

Ejemplo:
Un protocolo para Carro y uno para Motor.
La clase seria un modelo de Auto.


<details>
        <summary>Solución</summary>
<p> Podemos crear un protocolo agregando nuevas caracteristicas, ej. </p>

```

protocol Engine {
  var motor: String { get set }
}
```

<p> La clase puede conformar múltiples protocolos, ej. </p>

```
<p> class BMW: Car, Engine </p>
```

<p> Pero nos vemos obligados a implementar las variables y funciones que esten definidas en el protocolo conformado. </p>

```
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
```

</details>
