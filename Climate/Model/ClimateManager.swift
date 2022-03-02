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
        let city = cityName.lowercased()
        let URLString = "\(weatherURL)&q=\(city)"
        print(URLString)
    }
    
    func performRequest(urlString: String) {
        
        //1. create URL
        if let url = URL(string: urlString) {
        
        //2. create a URL session
        let session = URLSession(configuration: .default)
            
        // 3. Give session a task
        let task = session.dataTask(with: url, completionHandler: handle(data: response: error:))
            
        // 4. Start the task
        task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
        
    }
}
