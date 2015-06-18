//
//  ForecastService.swift
//  WeatherApp
//
//  Created by Abdullah Ali on 18/06/2015.
//  Copyright (c) 2015 Abdullah Ali. All rights reserved.
//

import Foundation

struct ForecastService {
    let forecastAPIKey: String
    let forecastBaseURL: NSURL?

    init(APIKey: String) {
        self.forecastAPIKey = APIKey
        self.forecastBaseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastAPIKey)/")
    }
    
    func getForecast(lat: Double, long: Double, completion: (CurrentWeather? -> Void)) {
        if let forecastURL =  NSURL(string: "\(lat),\(long)", relativeToURL: forecastBaseURL) {
            let networkOperation = NetworkOperation(url: forecastURL)
            
            networkOperation.downloadJSON {
                (let jsonDictionary) in
                let currentWeather = self.currentWeatherFromJson(jsonDictionary)
                completion(currentWeather)
            }
        } else {
            println("could not construct forecast url")
        }
    }
    
    func currentWeatherFromJson(jsonDictionary: [String: AnyObject]?) -> CurrentWeather? {
        if let currentWeatherDictionary = jsonDictionary?["currently"] as? [String: AnyObject] {
            return CurrentWeather(weatherDictionary: currentWeatherDictionary)
        } else {
            println("json dictionary does not have 'currently' key")
            return nil
        }
    }
}