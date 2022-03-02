//
//  ClimateManager.swift
//  Climate
//
//  Created by Gino Tasis on 3/2/22.
//

import Foundation

struct ClimateManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=511e5f562c46dbf8c9d1f7f4f971974e&units=imperial"
    
    func fetchWeather(cityName: String) {
        var URLString = "\(weatherURL)&q=\(cityName)"
    }
    
    
}
