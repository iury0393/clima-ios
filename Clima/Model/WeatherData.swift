//
//  WeatherData.swift
//  Clima
//
//  Created by Iury Vasconcelos on 08/08/22.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
