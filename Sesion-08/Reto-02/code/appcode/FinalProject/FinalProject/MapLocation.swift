//
//  MapLocation.swift
//  FinalProject
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit
import MapKit

class MapLocation {
  
  let coordinates = Coordinates()
  var annotations: [MKPointAnnotation] = []
  
  func getLocationsNames() -> [String] {
    var locations: [String] = []
    locations.append(coordinates.angel.name)
    locations.append(coordinates.palace.name)
    return locations
  }
  
  func routePoints() -> (source: MKMapItem, destination: MKMapItem) {
    let locationAngel = CLLocationCoordinate2D(latitude: coordinates.angel.lat, longitude: coordinates.angel.long)
    let locationPalace = CLLocationCoordinate2D(latitude: coordinates.palace.lat, longitude: coordinates.palace.long)
    let sourcePlacemark = MKPlacemark(coordinate: locationAngel, addressDictionary: nil)
    let destinationPlacemark = MKPlacemark(coordinate: locationPalace, addressDictionary: nil)
    let source = MKMapItem(placemark: sourcePlacemark)
    let destination = MKMapItem(placemark: destinationPlacemark)
    return (source, destination)
  }
  
  func generateAnnotations() {
    let locationAngel = CLLocationCoordinate2D(latitude: coordinates.angel.lat, longitude: coordinates.angel.long)
    let locationPalace = CLLocationCoordinate2D(latitude: coordinates.palace.lat, longitude: coordinates.palace.long)
    addAnnotation(coordinate: locationAngel, name: coordinates.angel.name, subtitle: coordinates.angel.subtitle)
    addAnnotation(coordinate: locationPalace, name: coordinates.palace.name, subtitle: coordinates.palace.subtitle)
  }
  
  func addAnnotation(coordinate: CLLocationCoordinate2D, name: String, subtitle: String) {
    let annotation = MKPointAnnotation()
    annotation.coordinate = coordinate
    annotation.title = name
    annotation.subtitle = subtitle
    annotations.append(annotation)
  }
  
  func calculateRegion() -> MKCoordinateRegion {
    let locationAngel = CLLocationCoordinate2D(latitude: coordinates.angel.lat, longitude: coordinates.angel.long)
    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    let region = MKCoordinateRegion(center: locationAngel, span: span)
    return region
  }
  
  func renderStyle(_ overlay: MKOverlay) -> MKPolylineRenderer {
    let renderer = MKPolylineRenderer(overlay: overlay)
    renderer.strokeColor = UIColor.red
    renderer.lineWidth = 4.0
    return renderer
  }
  
  func directionsRequest(from source: MKMapItem, to destination: MKMapItem) -> MKDirections {
    let directionRequest = MKDirections.Request()
    directionRequest.source = source
    directionRequest.destination = destination
    directionRequest.transportType = .automobile
    return MKDirections(request: directionRequest)
  }
}
