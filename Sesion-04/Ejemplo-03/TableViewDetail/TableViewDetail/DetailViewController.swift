//
//  DetailViewController.swift
//  TableViewDetail
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var name: UILabel!
  @IBOutlet weak var type: UILabel!
  @IBOutlet weak var image: UIImageView!
  
  var pokemon: Pokemon?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    name.text = pokemon?.name
    let pokemonType: String = (pokemon?.type.name)!
    type.text = "Tipo: \(pokemonType)"
    image.image = pokemon?.photo
    // Do any additional setup after loading the view.
  }

  @IBAction func back(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
  
}
