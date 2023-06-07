//
//  TripTableViewCell.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 01/06/23.
//

import UIKit

class TripTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    
  @IBOutlet weak var backgroundViewCell: UIView!
  @IBOutlet weak var imageViewCell: UIImageView!
  @IBOutlet weak var tripTitleLabel: UILabel!
  @IBOutlet weak var tripSubtitleLabel: UILabel!
  @IBOutlet weak var tripDailyLabel: UILabel!
  @IBOutlet weak var fullPriceLabel: UILabel!
  @IBOutlet weak var priceWithDiscountLabel: UILabel!
  @IBOutlet weak var tripCancellationStatusLabel: UILabel!
}
