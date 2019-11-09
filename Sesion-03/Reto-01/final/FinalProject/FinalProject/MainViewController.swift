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
  
  var locations: [String] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    
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
    // logout actions
  }

  private func addAnnotation(coordinate: CLLocationCoordinate2D, name: String, subtitle: String) {
    let annotation = MKPointAnnotation()
    annotation.coordinate = coordinate
    annotation.title = name
    annotation.subtitle = subtitle
    mapView.addAnnotation(annotation)
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
