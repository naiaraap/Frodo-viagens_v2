//
//  TripOffersViewModel.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 09/06/23.
//

import Foundation

class TripOffersViewModel: TripViewModel {
  
  //MARK: protocol attributes
  var sectiontionTitle: String {
    return "Offers"
  }
  
  var tripType: TripViewModelType {
    return .offers
  }
  
  var trips: [Trip]
  
  var numberOfTripsOrRows: Int {
    return 1
  }
  
  //MARK: Init
  init(_ trips: [Trip]) {
    self.trips = trips
  }
  
}
