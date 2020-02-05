//
//  WeatherForecast_3_5.swift
//  SBiOS_m12_dz
//
//  Created by Dmitry Aksyonov on 27.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation

struct WeatherForecast: Codable {
    var list: [List]
}

struct List: Codable {
    var dt: Int
    var main: Main
    var weather: [Weather]
    var wind: Wind
}

struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}
