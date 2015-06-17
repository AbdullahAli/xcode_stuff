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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let forecastBaseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastAPIKey)/")
        let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: forecastBaseURL)
        
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)
        
        let request = NSURLRequest(URL: forecastURL!)
        
        let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data: NSData!, response: NSURLResponse!, error: NSError!) -> Void in
            println(data)
        })
        
        dataTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

