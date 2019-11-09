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
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func logout(_ sender: Any) {
    // logout actions
  }
  
}

