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
  
  var locations: [String] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    mapView.showsUserLocation = true
    mapView.delegate = self
    
    let coordinates = Coordinates()
    let locationAngel = CLLocationCoordinate2D(latitude: coordinates.angel.lat,
                                               longitude: coordinates.angel.long)
    let locationPalace = CLLocationCoordinate2D(latitude: coordinates.palace.lat,
                                                longitude: coordinates.palace.long)
    
    locations.append(coordinates.angel.name)
    locations.append(coordinates.palace.name)
    
    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    let region = MKCoordinateRegion(center: locationAngel, span: span)
    mapView.setRegion(region, animated: true)
    
    addAnnotation(coordinate: locationAngel,
                  name: coordinates.angel.name,
                  subtitle: coordinates.angel.subtitle)
    
    addAnnotation(coordinate: locationPalace,
                  name: coordinates.palace.name,
                  subtitle: coordinates.palace.subtitle)
  }
  
  @IBAction func logout(_ sender: Any) {
    let alertController = UIAlertController(title: "Cerrar Sesión", message: "¿Estas seguro de que quieres salir?", preferredStyle: .alert)
    let action1 = UIAlertAction(title: "Si", style: .default) { (action:UIAlertAction) in
      _ = self.navigationController?.popViewController(animated: true)
    }
    let action2 = UIAlertAction(title: "Cancelar", style: .cancel) { (action:UIAlertAction) in
        print("You've pressed cancel");
    }
    alertController.addAction(action1)
    alertController.addAction(action2)
    self.present(alertController, animated: true, completion: nil)
  }
  
  @IBAction func changeMapStyle(_ sender: Any) {
    if segmented.selectedSegmentIndex == 0 {
      mapView.mapType = .standard
    } else {
      mapView.mapType = .satellite
    }
  }
  
  @IBAction func showPath(_ sender: Any) {
    if showPathSwitch.isOn {
      let coordinates = Coordinates()
      let locationAngel = CLLocationCoordinate2D(latitude: coordinates.angel.lat, longitude: coordinates.angel.long)
      let locationPalace = CLLocationCoordinate2D(latitude: coordinates.palace.lat, longitude: coordinates.palace.long)
      let sourcePlacemark = MKPlacemark(coordinate: locationAngel, addressDictionary: nil)
      let destinationPlacemark = MKPlacemark(coordinate: locationPalace, addressDictionary: nil)
      let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
      let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
      directions(source: sourceMapItem, destination: destinationMapItem)
    } else {
      self.mapView.removeOverlays(self.mapView.overlays)
    }
  }
  
  private func addAnnotation(coordinate: CLLocationCoordinate2D, name: String, subtitle: String) {
    let annotation = MKPointAnnotation()
    annotation.coordinate = coordinate
    annotation.title = name
    annotation.subtitle = subtitle
    mapView.addAnnotation(annotation)
  }
  
  private func directions(source: MKMapItem, destination: MKMapItem) {
    // Calculate the direction
    let directionRequest = MKDirections.Request()
    directionRequest.source = source
    directionRequest.destination = destination
    directionRequest.transportType = .automobile
    let directions = MKDirections(request: directionRequest)
    directions.calculate { (response, error) -> Void in
      guard let response = response else { return }
      let route = response.routes[0]
      self.mapView.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)
      let rect = route.polyline.boundingMapRect
      self.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }
  }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return locations.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellId") else {
      return UITableViewCell()
    }
    cell.textLabel?.text = locations[indexPath.row]
    return cell
  }
}

extension MainViewController: MKMapViewDelegate {
  func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    let renderer = MKPolylineRenderer(overlay: overlay)
    renderer.strokeColor = UIColor.red
    renderer.lineWidth = 4.0
    return renderer
  }
}
