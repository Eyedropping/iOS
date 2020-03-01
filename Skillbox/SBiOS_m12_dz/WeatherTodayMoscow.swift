//
//  WeatherStruct.swift
//  SBiOS_m12_dz
//
//  Created by Dmitry Aksyonov on 27.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation

struct WeatherTodayMoscow: Codable {
    var main: Main
    var wind: Wind
    var name: String
    var weather: [Weather]
}

struct Main: Codable{
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Double
    var humidity: Double
}

struct Wind: Codable {
    var speed: Double
    var deg: Int
}
