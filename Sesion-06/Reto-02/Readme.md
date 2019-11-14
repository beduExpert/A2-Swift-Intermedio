 

agrega el programa que se desarrollara con backticks> [agrega la sesion con backticks] 
	
## Titulo del Ejemplo 

### OBJETIVO 

- Lo que esperamos que el alumno aprenda 

#### REQUISITOS 

1. Lo necesario para desarrollar el ejemplo o el Reto 

#### DESARROLLO

Agrega las instrucciones generales del ejemplo o reto

<details>
	<summary>Solución</summary>
	<p> La función para obtener los Retain cycles:</p>
	
```
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let food: Food = Food()
    let animal: Animal = Animal(name: "Toby")
    food.addAnimal(animal)
    animal.addFood(food)
    print("ARC count \(CFGetRetainCount(food))")
    print("ARC count \(CFGetRetainCount(animal))")
  }
}
```
</details> 

