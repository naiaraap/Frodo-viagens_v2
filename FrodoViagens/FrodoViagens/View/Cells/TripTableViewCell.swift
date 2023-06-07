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
  
  func setCel(_ trip: Trip?) {
    imageViewCell.image = UIImage(named: trip?.asset ?? "")
    tripTitleLabel.text = trip?.title
    tripSubtitleLabel.text = trip?.subtitle
    priceWithDiscountLabel.text = "R$ \(trip?.priceWithDiscount ?? 0.0)"
    
    let stringAttribute: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(trip?.fullPrice ?? 0.0)")
    
    stringAttribute.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, stringAttribute.length))
    
    fullPriceLabel.attributedText = stringAttribute
    
    if let numberOfDays = trip?.daily, let numberOfGuests = trip?.guests {
      
      let dailyText = numberOfDays > 1 ? "diárias" : "diária"
      let guestsText = numberOfGuests > 1 ? "hóspedes" : "hóspede"
      
      tripDailyLabel.text = "\(numberOfDays) \(dailyText) - \(numberOfGuests) \(guestsText)"
    }
  }
}
