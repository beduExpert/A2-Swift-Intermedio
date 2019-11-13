 
`Desarrollo Mobile` > `Swift Intermedio` 
	
## Agregando vista de detalle a App de Login/Maps

### OBJETIVO 

- Reforzar el conocimiento adquirido de como implementar DetailViews a partir de un TableView.

#### REQUISITOS 

1. **Reto-02** terminado y funcionando, de no ser posible, proyecto final de la **Sesión-03**.

#### DESARROLLO

1.- Una vez abierto el proyecto, dirigete a `MainViewController` e implementa la función:

> func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)

2.- Esta función debera abrir una vista de detalle donde muestre información del destino seleccionado.

Solamente mostraremos el nombre del lugar seleccionado.

![](0.gif)

Si lo deseas implementa un Modelo que ayude a pasar los datos a la vista de Detalle.


<details>
        <summary>Solución</summary>
<p> Para implementar la función didSelectRowAt: </p>
<p> Ojo cabe mencionar que en este caso estamos pasando las coordenadas, pero lo ideal seria pasar un modelo. </p>
```
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
    let locations = mapLocation.getLocationsNames()
    vc.nameValue = locations[indexPath.row]
    self.navigationController?.pushViewController(vc, animated: true)
  }
```  
