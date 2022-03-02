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
    
}

struct Main: Decodable {
    
    let temp: Double
    
}
