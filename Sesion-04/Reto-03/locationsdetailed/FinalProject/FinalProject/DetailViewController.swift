//
//  DetailViewController.swift
//  FinalProject
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var image: UIImageView!
  @IBOutlet weak var mapview: MKMapView!
  @IBOutlet weak var name: UILabel!
  
  var coordinates: Coordinates?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

}
