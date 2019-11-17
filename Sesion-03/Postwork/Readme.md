
`Desarrollo Mobile` > `Swift Intermedio` 

## Clase para navigation

### OBJETIVO

- Reforzar el concepto de clase

#### REQUISITOS

1. Xcode 11
2. Reto-03 terminado.

#### DESARROLLO

1.- Continuaremos con concepto de Clase, esta vez implementar una clase que se encargue de manejar los eventos de push y present del navigation.

2.- Una vez implementada la clase, sustituir el código donde antes teniamos:

```
 let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController
    self.navigationController?.pushViewController(vc!, animated: true)
```