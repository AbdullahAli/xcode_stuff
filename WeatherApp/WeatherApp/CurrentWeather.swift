//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Abdullah Ali on 16/06/2015.
//  Copyright (c) 2015 Abdullah Ali. All rights reserved.
//

import Foundation

struct CurrentWeather {
    
    let temperature: Double?
    let humidity: Double?
    let precipProbability: Int?
    let summary: String?
    
    init(weatherDictionary: [String: AnyObject]) {
        if let temp = weatherDictionary["temperature"] as? Double {
            temperature = temp
        } else {
            temperature = nil
        }
        
        if let humid = weatherDictionary["humidity"] as? Double {
            humidity = humid
        } else {
            humidity = nil
        }
        
        if let preProb = weatherDictionary["precipProbability"] as? Int {
            precipProbability = preProb
        } else {
            precipProbability = nil
        }
        
        if let summ = weatherDictionary["summary"] as? String {
            summary = summ
        } else {
            summary = nil
        }
    }
}