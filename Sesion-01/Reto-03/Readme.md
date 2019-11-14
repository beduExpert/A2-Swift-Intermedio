
`Desarrollo Mobile` > `Swift Intermedio`


## Implementar una vista de detalle

### OBJETIVO

- Mostrar una vista de detalle al seleccionar una celda del TableView.

#### REQUISITOS

1. Xcode.

#### DESARROLLO

1.- Con base en el Ejemplo-02, implementar una vista de detalle.

2.- Al seleccionar una celda, se deberá navegar a esta vista.

![](0.gif)


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





