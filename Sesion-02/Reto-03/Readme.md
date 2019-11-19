 

`Desarrollo Mobile` > `Swift Intermedio` 

	
## Agregar más características al protocolo Pingüino y Águila.

### OBJETIVO 

- Aprender máss sobre el uso de herencia, extensiones y protocolos.

#### REQUISITOS 

1. Haber concluido el Ejemplo-04.

#### DESARROLLO

1. Con base al Ejemplo-04, agregar más características a las definiciones de Pingüino y Águila.

2. Implementar mediante extensiones el valor de Feathers como True por defecto.

<details>
        <summary>Solución</summary>
<p> Agregamos protocolos con mas carácteristicas, como: </p>

```
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
```

<p>Comformamos el Protocolo en cada definición. </p>

```
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
```
</details>
