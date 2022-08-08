//
//  WeatherManager.swift
//  Clima
//
//  Created by Iury Vasconcelos on 06/08/22.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=95e4c1e830204740e0ba08a2eb7124eb&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let stringUrl = String(data: safeData, encoding: .utf8)
                }
            }
            
            task.resume()
        }
    }
}
