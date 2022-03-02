//
//  ClimateData.swift
//  Climate
//
//  Created by Gino Tasis on 3/2/22.
//

import Foundation

// data we get from the API

struct ClimateData: Decodable {
    
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main: Decodable {
    
    let temp: Double
    
}

struct Weather: Decodable {
    
    let description: String
    
}
