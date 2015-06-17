//
//  NetworkOperation.swift
//  WeatherApp
//
//  Created by Abdullah Ali on 17/06/2015.
//  Copyright (c) 2015 Abdullah Ali. All rights reserved.
//

import Foundation

class NetworkOperation {
    lazy var config: NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
    lazy var session: NSURLSession = NSURLSession(configuration: self.config)
    let url: NSURL
    
    typealias JSONDictionaryCompletion = ([String: AnyObject]? -> Void)
    
    init(url: NSURL) {
        self.url = url
    }
    
    func downloadJSON(completion: JSONDictionaryCompletion) {
        let request = NSURLRequest(URL: url)
        
        let dataTask = session.dataTaskWithRequest(request) {
            (let data, let response, let error) in
            
            if let httpResponse = response as? NSHTTPURLResponse {
                switch(httpResponse.statusCode) {
                case:200
                    let jsonDictionary = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) as? [String:AnyObject]
                    completion(jsonDictionary)
                default:
                    println("not a successful http response: \(httpResponse.statusCode)")
                }
            } else {
                println("http response is not valid")
            }
        }
    }
}