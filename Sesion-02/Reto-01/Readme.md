 

`Desarrollo Mobile` > `Swift Intermedio`  
	
## Definiendo una Clase

### OBJETIVO 

- Con base a lo aprendido del Ejemplo-01, el alumno debe de ser capaz de definir una clase por su cuenta.

#### REQUISITOS 

1. Haber concluido el Ejemplo-01.

#### DESARROLLO

1.- Crear en un Playground una definición de clase Persona.

2.- La clase Persona debe incluir properties y methods.

3.- Adicionalmente, agregar modificadores de acceso.

<details>
        <summary>Solución</summary>
<p> Ejemplo de la clase Persona: </p>

```
class Person {
  var name: String
  var age: Int
  var height: Float
  var weight: Float
  
  init(name: String, age: Int, height: Float, weight: Float) {
    self.name = name
    self.age = age
    self.height = height
    self.weight = weight
  }
  
  func run() {
    print("Person is running")
  }
}
```
<p> Ejemplo de la clase Persona con modificadores de acceso: </p>

```
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
```

</details>
