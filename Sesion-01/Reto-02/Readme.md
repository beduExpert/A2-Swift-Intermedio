
`Desarrollo Mobile` > `Swift Intermedio`


## Mostrar valores de propiedades de las funcionesd e Delegate y DataSource.

### OBJETIVO

- Implementar el resto de funciones en el proyecto de TableView.

- Utilizar la función **print()** para verificar que se esté ejecutando dicha función.


#### REQUISITOS

1. Xcode.
2. Proyecto terminado del Reto-01 con TableViews con Delegate y DataSource conectados.
3. Se deben mostrar los elementos del Array.

#### DESARROLLO

1.- Con base en el Reto-01 de TableViews continuar la app.

2.- De las funciones de TableView implementadas del **Reto-01**, imprimir los valores de cada variable en dichas funciones. Cada variable tiene propiedades, imprimirlos tambien, ejemplo de una propiedad:

```
print(indexPath.row)
```


<details>
        <summary>Solución</summary>
<p>La función print() debe implementarse en cada property de cada parámetro de las funciones de TableView, ejemplo: </p>

```
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(#function)
        print(indexPath.row)
    print(indexPath.section)
    print(indexPath.count)
    print(indexPath.description)
    print(tableView.numberOfSections)
    print(tableView.description)
  }
```

<p>El resultado debe verse en el debugger: </p> 

<img src="0.png" alt="Solucion" width="500" height="190">
                  
</details>





