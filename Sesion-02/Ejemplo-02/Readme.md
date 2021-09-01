

`Desarrollo Mobile` > `Swift Intermedio` 

## Herencia y Polimorfismo

### OBJETIVO

- Definir clases propias y analizar el concepto de Polimorfismo.

#### REQUISITOS

- Xcode.


#### DESARROLLO

Debido a que las clases pueden heredar de otras (por ejemplo, `CountrySinger` puede heredar de `Singer`) significa que una clase es un superconjuto de otra: la clase B tiene todas las cosas que tiene A, con algunos extras. Esto, a su vez, significa que puedes tratar B como tipo B o como tipo A, dependiendo de tus necesidades.

1.- En un **Playground** Definir las siguientes clases

```swift
class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}
```

2.- Debido a que cualquier instancia de `LiveAlbum` es heredada de `Album`, puedes tratarlo como `Album` o `LiveAlbum`, ambos al mismo tiempo. Esto es llamado "polimorfismo", pero significa que puedes escribir código como este:

```swift
var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
```

3.- Creamos un arreglo que solo contiene albums, pero dentro ponemos dos studio albums y un live album. Esto está perfecto en Swift porque descienden de la clase `Album`, por lo que comparten el mismo comportamiento básico.
