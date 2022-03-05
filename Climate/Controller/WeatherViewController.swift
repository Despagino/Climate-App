//
//  WeatherViewController.swift
//  Climate
//
//  Created by Gino Tasis on 2/28/22.
//

import Foundation
import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate, ClimateManagerDelegate {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var climateManager = ClimateManager()
    
    override func viewDidLoad() {
        searchTextField.delegate = self
        climateManager.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(searchTextField.text!)
        searchTextField.endEditing(true)
        return true
    }
    
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchTextField.text {
            climateManager.fetchWeather(cityName: city)
        }
        searchTextField.text = ""
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    func didUpdateWeather(_ climateManager: ClimateManager, weather: ClimateModel) {
        print(weather)
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
    
}
