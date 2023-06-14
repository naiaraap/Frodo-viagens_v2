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
  
  //MARK - View Life Cicle
  override func viewDidLoad() {
    super.viewDidLoad()
    //setupView()
  }
  
  //MARK - Actions
  @IBAction func tapOnBackButton() {
    navigationController?.popViewController(animated: true)
  }
  
}
