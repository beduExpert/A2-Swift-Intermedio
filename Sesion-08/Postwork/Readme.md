`Desarrollo Mobile` > `Swift Intermedio` 

## Creando tu propio Pod

### OBJETIVO

- En este PostWork intentaremos crear nuestro propio Pod.
- Aunque es un tema que pueda considerarse avanzado, tener nociones del proceso de creación abre el panorama del alumno como desarrollador.

#### REQUISITOS

0. Conexión a Internet
1. Contraseña de administrador del sistema.
2. Terminal de macOS 
3. Xcode 11
4. Cuenta en GitHub

#### DESARROLLO

1.- Crear un proyecto en Xcode simple.

2.- Crear dos repositorios, uno para el código y otro para incluir la Info del proyecto.

Ejemplo:

```
MyApp
MyAppSpec
```

3.- Crear un repositorio privado en tu instalación de cocoapods.

> pod repo add [REPO_NAME] [SOURCE_URL]

En REPO_NAME ira e name de Spec y en SOURCE_URL el URL del repo del código de github.

Linkeamos el repositorio.

```
cd ~/.cocoapods/repos/REPO_NAME
pod repo lint .
```

4.- Generamos un Pod project

> pod lib create [POD_NAME]


Todo bien...
continuemos con los [Pasos siguientes.](https://medium.com/@shahabejaz/create-and-distribute-private-libraries-with-cocoapods-5b6507b57a03).




