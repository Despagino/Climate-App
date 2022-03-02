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
        performRequest(urlString: URLString)
    }
    
    func performRequest(urlString: String) {
        
        //1. create URL
        if let url = URL(string: urlString) {
        
        //2. create a URL session
        let session = URLSession(configuration: .default)
            
        // 3. Give session a task
            
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                }
            }
            
        // 4. Start the task
        task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
        let decodedData = try decoder.decode(ClimateData.self, from: weatherData)
            let id = decodedData.weather[0].id
            getConditionName(weatherId: id)
        } catch {
            print(error)
        }
    }
    
    func getConditionName(weatherId: Int) -> String {
        
        switch weatherId {
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
