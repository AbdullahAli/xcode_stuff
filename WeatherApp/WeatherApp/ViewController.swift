//
//  ViewController.swift
//  WeatherApp
//
//  Created by Abdullah Ali on 16/06/2015.
//  Copyright (c) 2015 Abdullah Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let forecastAPIKey = "1afa211bb2ec31a0febb289e8081ad59"
    let coor: (lat: Double, long: Double) = (37.8267,-122.423)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let forecastService = ForecastService(APIKey: forecastAPIKey)
        forecastService.getForecast(coor.lat, long: coor.long) {
            (let currently) in
            if let currentWeather = currently {
                println(currentWeather.humidity)
                println(currentWeather.precipProbability)
                println(currentWeather.summary)
                println(currentWeather.temperature)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

