//
//  TripViewModel.swift
//  FrodoViagens
//
//  Created by Naiara de Almeida Pantuza on 02/06/23.
//

import Foundation

enum TripViewModelType: String {
  case highlights
  case offers
  case international
}

protocol TripViewModel: AnyObject {
  var sectiontionTitle: String { get }
  var tripType: TripViewModelType { get }
  var trips: [Trip] { get }
  var numberOfTripsOrRows: Int { get }
}
