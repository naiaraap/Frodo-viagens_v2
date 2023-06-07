//
//  TripHighlightsViewModel.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 02/06/23.
//

import Foundation

class TripHighlightsViewModel: TripViewModel {
  var sectiontionTitle: String {
    return "Highlights"
  }
  
  var tripType: TripViewModelType {
    return .highlights
  }
  
  var trips: [Trip]
  
  var numberOfTripsOrRows: Int {
    return trips.count
  }
  
  init(_ trips: [Trip]) {
    self.trips = trips
  }
}
