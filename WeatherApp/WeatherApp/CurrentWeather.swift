//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Abdullah Ali on 16/06/2015.
//  Copyright (c) 2015 Abdullah Ali. All rights reserved.
//

import Foundation

struct CurrentWeather {
    
    let temperature: Int
    let humidity: Int
    let precipProbability: Int
    let summary: String
    
    init(weatherDictionary: [String: AnyObject]) {
        temperature = weatherDictionary["temperature"] as! Int
        humidity = weatherDictionary["humidity"] as! Int
        humidity = weatherDictionary["precipProbability"] as! Int
    }
}