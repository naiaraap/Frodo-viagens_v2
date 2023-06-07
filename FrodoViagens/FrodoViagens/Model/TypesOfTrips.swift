//
//  TipoDeViagens.swift
//  FrodoVigens
//
//  Created by Naiara Pantuza on 02/06/23
//

import Foundation

struct TypesOfTrips: Codable {
    
    var highlights: [Trip]?
    var offers: [Trip]?
    var international: [Trip]?
    
    static func jsonToData(_ json:[String: Any]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }

    static func decodeJson(_ jsonData: Data) -> TypesOfTrips? {
        do {
            return try JSONDecoder().decode(TypesOfTrips.self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
