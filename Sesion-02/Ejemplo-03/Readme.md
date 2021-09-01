
`Desarrollo Mobile` > `Swift Intermedio` 

## Protocolos

### OBJETIVO

- Definir protocolos, con sus propiedades y métodos.

#### REQUISITOS

1. Xcode.

#### DESARROLLO

1.- Un protocolo es una plantilla que podemos usar cuando queremos tener una especificación común a una serie de clases, *structs* o enumeraciones. **Un protocolo nos permite indicar las cabeceras de funciones o propiedades que queramos se incluyan de manera obligada para cumplir con una especificación** que, posteriormente, tendrá una implementación asociada (un código que le de funcionalidad). 

Definir un protocolo que contenga almenos un property de tipo **GET** y uno de tipo **GET-SET**.

**protocol** Car {

 **var** color: UIColor { **get** }

 **var** doors: Int { **get** **set** }

}



2.- Agregar dos funciones, una con retorno y una sin retorno.

**protocol** Car {

 **var** color: UIColor { **get** }

 **var** doors: Int { **get** **set** }

 **func** run()

 **func** hasGas() -> Bool

}



3.- Teniendo el protocolo, definir una Clase, esta clase debe conformar el Protocolo.

**class** BMW: Car {

 

 **var** color: UIColor

 **var** doors: Int

 

 **init**(color: UIColor, doors: Int) {

  **self**.color = color

  **self**.doors = doors

 }

 

 **func** run() {

  print("run run")

 }

 

 **func** hasGas() -> Bool {

  **return** **true**

 }

}

