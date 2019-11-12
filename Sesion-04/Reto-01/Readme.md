`Desarrollo Mobile` > `Swift Intermedio` 

## Ampliando el Stack

### OBJETIVO 

- Con base a lo aprendido en el Ejemplo-01, implementar mas a fondo el uso de Stacks

#### REQUISITOS 

0. Xcode 11
1. Ejemplo-01 concluido y funcionando.

#### DESARROLLO

1. Con base al Ejemplo-01, implementar un nuevo flujo partiendo del ViewController inicial, agregar almenos 3 vistas.

2. En la última vista del nuevo flujo, implementar un código que permita regresar a la vista **ANTERIOR**.

3. En la última vista del nuevo flujo, implementar un código que permita regresar a la vista **INICIAL**.


<details>
   <summary>Solución</summary>
	<p> Para regresar a la vista ANTERIOR, dentro del IBAction asignado al Button, implementamos: </p>
	```
	navigationController?.popViewController(animated: true)
	```
	<p> Para regresar a la vista INICIAL, dentro del IBAction asignado al Button, implementamos: </p>
	```
	navigationController?.popToRootViewController(animated: true)
	```
</details>
