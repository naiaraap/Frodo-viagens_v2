//
//  Trip.swift
//  FrodoVigens
//
//  Created by Naiara Pantuza on 02/06/23
//

import Foundation

struct Trip: Codable {
    var id: Int
    var title: String
    var asset: String
    var subtitle: String
    var daily: Int
    var guests: Int
    var fullPrice: Double
    var priceWithDiscount: Double
    var cancellation: String
    
    static func jsonToData(_ json:[String: Any]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }

    static func decodeJson(_ jsonData: Data) -> Trip? {
        do {
            return try JSONDecoder().decode(Trip.self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
