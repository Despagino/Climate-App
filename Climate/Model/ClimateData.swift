//
//  ClimateData.swift
//  Climate
//
//  Created by Gino Tasis on 3/2/22.
//

import Foundation

// data we get from the API
struct ClimateData: Codable {
    
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main: Codable {
    
    let temp: Double
    
}

struct Weather: Codable {
    
    let description: String
    let id: Int
    
}
