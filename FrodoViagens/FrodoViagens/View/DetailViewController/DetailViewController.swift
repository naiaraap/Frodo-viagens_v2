//
//  DetailViewController.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 13/06/23.
//

import UIKit

class DetailViewController: UIViewController {
  
  //MARK: - Outlets
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var titleView: UILabel!
  @IBOutlet weak var SubtitleView: UILabel!
  
  //MARK - attributes
  var trip: Trip?
  
  //MARK - View Life Cicle
  class func instantiate(_ trip: Trip) -> DetailViewController {
    let detailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
    detailViewController.trip = trip
    return detailViewController
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //setupView()
  }
  
  //MARK - Actions
  @IBAction func tapOnBackButton() {
    navigationController?.popViewController(animated: true)
  }
  
}
