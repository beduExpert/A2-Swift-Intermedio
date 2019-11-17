
`Desarrollo Mobile` > `Swift Intermedio` 

## Definiendo métodos de clase

### OBJETIVO

- Conocer el concepto de clase y herencia. Implementar una clase padre y una clase hija.

#### REQUISITOS

1. Conceptos básicos de Swift como Variables, constantes, operadores y tipos de datos.

#### DESARROLLO

1.- Definiendo métodos de clase

Abrir un playground y definir la clase **Car**.

Definir los métodos: arrancar y frenar.


2.- Definir una clase **Taxi** y una clase **Camioneta**.

En el playground de la clase Car.

Definir la clase **Taxi** y la clase **Camioneta**, ambas heredan de **Car**.

**Tip**: Taxi debe implementar el constructor de su clase padre.

```
super.init(wheels: 4, doors: 5, color: .yellow, motor: "taxi-motor")
```

Ejemplo de clase Taxi:

```
class Taxi: Car {
  var rate: Int
  var hasPassenger: Bool

  init(rate: Int, hasPassenger: Bool) {
    self.rate = rate
    self.hasPassenger = hasPassenger
    super.init(wheels: 4, doors: 5, color: .yellow, motor: "taxi-motor")
  }
}
```