
`Desarrollo Mobile` > `Swift Intermedio` 


## Integrando Objective-c en Swift

### OBJETIVO

- Como integrar archivos de clase de Objective-C y hacerlos funcionar en Swift.

#### REQUISITOS

1. Archivos de clase en la carpeta [CodeObjc](CodeObjc).

2. Xcode 11

#### DESARROLLO

1.- Crearemos un proyecto en Swift y agregaremos una clase en Objective-C.

Utilizaremos un código de Objective-C dentro de un proyecto en Swift.

2.- Una vez creado el proyecto, agregar las clases Persona.

Aparecerá una ventana similar a esta, seleccionamos Copy y Finish.

![](0.png)

3.- Posteriormente nos pedirá crear un Bridging Header.
Lo seleccionamos.

![](1.png)

4.- En el Bridge agregaremos el código a utilizar, en este caso la clase Person, entonces agregamos **Person.h**.

![](2.png)

5.- Implementamos el código en el **ViewController** a manera de test.

![](3.png)

Al compilar vemos que son compatibles.



