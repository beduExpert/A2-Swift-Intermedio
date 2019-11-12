//
//  MainViewController.swift
//  FinalProject
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit
import MapKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var mapView: MKMapView!
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var segmented: UISegmentedControl!
  @IBOutlet weak var showPathSwitch: UISwitch!
  private let mapLocation: MapLocation = MapLocation()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // TableView
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    // MapView
    mapView.delegate = self
    mapView.showsUserLocation = true
    mapView.setRegion(mapLocation.calculateRegion(), animated: true)
    // Annotations
    mapLocation.generateAnnotations()
    for annotation in mapLocation.annotations {
      mapView.addAnnotation(annotation)
    }
  }
  
  @IBAction func logout(_ sender: Any) {
    let alertController = UIAlertController(title: "Cerrar Sesión",
                                            message: "¿Estas seguro de que quieres salir?",
                                            preferredStyle: .alert)
    let action1 = UIAlertAction(title: "Si", style: .default) { (action:UIAlertAction) in
      _ = self.navigationController?.popViewController(animated: true)
    }
    let action2 = UIAlertAction(title: "Cancelar", style: .cancel) { (action:UIAlertAction) in
      print("You've pressed cancel")
    }
    alertController.addAction(action1)
    alertController.addAction(action2)
    self.present(alertController, animated: true, completion: nil)
  }
  
  @IBAction func changeMapStyle(_ sender: Any) {
    mapView.mapType = segmented.selectedSegmentIndex == 0 ? .standard : .satellite
  }
  
  @IBAction func showPath(_ sender: Any) {
    if showPathSwitch.isOn {
      let source = mapLocation.routePoints().source
      let destination = mapLocation.routePoints().destination
      directions(from: source, to: destination)
    } else {
      self.mapView.removeOverlays(self.mapView.overlays)
    }
  }
  
  private func directions(from source: MKMapItem, to destination: MKMapItem) {
    // Calculate the direction
    let directions = mapLocation.directionsRequest(from: source, to: destination)
    directions.calculate { (response, error) -> Void in
      guard let response = response else { return }
      let route = response.routes[0]
      self.mapView.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)
      let rect = route.polyline.boundingMapRect
      self.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }
  }
}

extension MainViewController: MKMapViewDelegate {
  func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    return mapLocation.renderStyle(overlay)
  }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return mapLocation.getLocationsNames().count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellId") else { return UITableViewCell() }
    let locations = mapLocation.getLocationsNames()
    cell.textLabel?.text = locations[indexPath.row]
    return cell
  }
}
