//
//  OffersTableViewCell.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 09/06/23.
//

import UIKit

class OffersTableViewCell: UITableViewCell {
  
  //MARK: - IBOutlets
  
  @IBOutlet var offerTripImageView: [UIImageView]!
  @IBOutlet var offerTripTitleLabel: [UILabel]!
  @IBOutlet var offerTripSubtitleLabel: [UILabel]!
  @IBOutlet var offerTripFullPriceLabel: [UILabel]!
  @IBOutlet var offerTripPriceWithDiscountLabel: [UILabel]!
  
  func setCell(_ trip: Trip?) {
    
  }
  
}
