
`Desarrollo Mobile` > `Swift Intermedio` 

## Creando una App con TabBar Controller

### OBJETIVO

- Aprender a utilizar uno de los componentes principales en la navegación de apps, el TabBar controller.

#### REQUISITOS

1. Xcode

#### DESARROLLO

Crear un TabBarController, con tres vistas o mas. 

1. Comenzamos creando una instancia de TabBarController():

```
let tabBarController = UITabBarController()
```

2. Posteriormente creamos tres instancias de ViewController.

```
let viewController1 = ViewController()
viewController1 = “View1”
viewController1.view.backgroundColor = UIColor.orange

let viewController2 = ViewController()
viewController2.title = “View2”
viewController2.view.backgroundColor = UIColor.blue

let viewController3 = ViewController()
viewController3.title = “View3”
viewController3.view.backgroundColor = UIColor.cyan
```

3. Asignamos cada View a un botón del TabBar.

```
viewController1.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)

viewController2.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)

viewController3.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 2)
```

4. Asignamos los controllers como ViewControllers del TabBar como un array.

```
let controllers = [viewController1, viewController2, viewController3]
tabBarController.viewControllers = controllers
```

5. Por último, creamos y asignamos un UINavigationController por cada ViewController.

```
tabBarController.viewControllers = controllers.map { 
	UINavigationController(rootViewController: $0)
}
```



