//
//  DecodableData.swift
//  FrodoVigens
//
//  Created by Naiara Pantuza on 02/06/23.
//

import Foundation

let tripsSection: [TripViewModel]? = load("server-response.json")

func load(_ filename: String) -> [TripViewModel]? {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        
        guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            fatalError("error to read json dictionary")
        }
        
        guard let listOfTrips = json["viagens"] as? [String: Any] else {
            fatalError("error to read travel list")
        }
        
        guard let jsonData = TypesOfTrips.jsonToData(listOfTrips) else { return nil }
        
        let tripType = TypesOfTrips.decodeJson(jsonData)
        
        var listTripViewModel: [TripViewModel] = []
        
        for section in listOfTrips.keys {
            switch TripViewModelType(rawValue: section)  {
            case .highlights:
                if let highlights = tripType?.highlights {
                    let highlightsViewModel = TripHighlightsViewModel(highlights)
                    listTripViewModel.insert(highlightsViewModel, at: 0)
                }
            case .offers:
                if let offers = tripType?.offers {
                    let offersViewModel = TripOffersViewModel(offers)
                    listTripViewModel.append(offersViewModel)
                }
            default:
                break
            }
        }
        
        return listTripViewModel
    } catch {
        fatalError("Couldn't parse")
    }
}
