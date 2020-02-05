//
//  Weather.swift
//  SBiOS_m12_dz
//
//  Created by Dmitry Aksyonov on 23.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation

class GetWeather {
     
    //MARK: - method for getting weather for today
    
    func getCurrenMowWeather(completion: @escaping ((WeatherTodayMoscow?, Bool)) -> Void) {
        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?id=524901&APPID=b3d57a41f87619daf456bfefa990fce4&units=metric")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let json = try JSONDecoder().decode(WeatherTodayMoscow.self, from: data)
                    print(json)
                    completion((json, true))
                } catch {
                    print(error)
                    completion((nil, true))
                }
                
            } else {
                print(error)
                completion((nil, false))
            }
        }
        task.resume()
    }
    
    //MARK: - method for getting weather forecast for 5 days
    
    func getMowForecast(completion: @escaping ((WeatherForecast?, Bool)) -> Void) {
        let url = URL(string: "http://api.openweathermap.org/data/2.5/forecast?id=524901&APPID=b3d57a41f87619daf456bfefa990fce4&units=metric")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let json = try JSONDecoder().decode(WeatherForecast.self, from: data)
                    completion((json, true))
                } catch {
                    print(error)
                    completion((nil, false))
                }
            } else {
                print(error)
            }
        }
        task.resume()
    }
}

// прочесть про codable + decodable (протоколы) + closures
