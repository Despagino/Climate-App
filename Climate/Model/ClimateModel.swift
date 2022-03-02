//
//  ClimateModel.swift
//  Climate
//
//  Created by Gino Tasis on 3/2/22.
//

import Foundation

struct ClimateModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var conditionName: String {
        
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800...804:
            return "sun.max"
        default:
            return "cloud"
        }
        
    }
    
}
