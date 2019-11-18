 
`Desarrollo Mobile` > `Swift Intermedio`
	
## Integrand un Custom Class de Objective-c

### OBJETIVO 

- Integrar clases de UIKit en Objective-C. 

#### REQUISITOS 

1. Xcode
2. [Clases](classes) proporcionadas.

#### DESARROLLO

1.- Crear un proyecto nuevo basado en Swift.

2.- Agregar un UIButton.

3.- Agregar las clases proporcionadas. Recuerda hacer un Bridge.

4.- El Button debe estar conectado a la clase ViewController.

5.- Codificar la funcionalidad que permita usar la clase **CustomButton**.

<details>
	<summary>Solución</summary>
	<p> Una vez realizados los pasos 1 al 4, la implementación del código es como sigue:</p>
	<p> En el ViewController tener declarado el IBOutlet del button.</p>
	<p> Utilizar la clase CustomButton y pasarle como parámetro el botón del IBOutlet.</p>
	
```
import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var button: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    CustomButton.setup(button)
  }
}
```
</details> 

