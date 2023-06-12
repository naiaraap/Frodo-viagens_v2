//
//  OffersTableViewCell.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 09/06/23.
//

import UIKit

class OffersTableViewCell: UITableViewCell {
  
  //MARK: - IBOutlets
  
  @IBOutlet var offerTripBackgroundView: [UIView]!
  @IBOutlet var offerTripImageView: [UIImageView]!
  @IBOutlet var offerTripTitleLabel: [UILabel]!
  @IBOutlet var offerTripSubtitleLabel: [UILabel]!
  @IBOutlet var offerTripFullPriceLabel: [UILabel]!
  @IBOutlet var offerTripPriceWithDiscountLabel: [UILabel]!
  
  func setCell(_ trips: [Trip]?) {
    guard let tripsList = trips else { return }
    
    for i in 0..<tripsList.count {
      setOutlets(i, trip: tripsList[i])
    }
    
    offerTripBackgroundView.forEach { actualView in
      actualView.addShadow()
    }
    
  }
  
  func setOutlets(_ index: Int, trip: Trip) {
    let tripImageView = offerTripImageView[index]
    tripImageView.image = UIImage(named: trip.asset)
    
    let tripTitleLabel = offerTripTitleLabel[index]
    tripTitleLabel.text = trip.title
    
    let tripSubtitleLabel = offerTripSubtitleLabel[index]
    tripSubtitleLabel.text = trip.subtitle
    
    let tripFullPriceLabel = offerTripFullPriceLabel[index]
    tripFullPriceLabel.text = "A partir de R$ \(trip.fullPrice)"
    
    let tripPriceWithDiscountLabel = offerTripPriceWithDiscountLabel[index]
    tripPriceWithDiscountLabel.text = "R$ \(trip.priceWithDiscount)"
  }
}
