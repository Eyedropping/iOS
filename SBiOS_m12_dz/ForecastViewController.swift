//
//  ForecastViewController.swift
//  SBiOS_m12_dz
//
//  Created by Dmitry Aksyonov on 28.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class ForecastViewController: UITableViewController {
    
    @IBOutlet weak var tableV: UITableView!
    
    let weatherGetter = GetWeather()
    
    var tableData = [List]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableVCCell
        let weatherData = self.tableData[indexPath.row]
        let time = Double(weatherData.dt)
        
        func unixTimeConvertion(unixTime: Double) -> String {
            let time = NSDate(timeIntervalSince1970: unixTime)
            let dateFormatter = DateFormatter()
            dateFormatter.locale = NSLocale(localeIdentifier: NSLocale.system.identifier) as Locale?
            dateFormatter.dateFormat = "hh:mm a"
            let dateAsString = dateFormatter.string(from: time as Date)
            dateFormatter.dateFormat = "h:mm a"
            let date = dateFormatter.date(from: dateAsString)
            dateFormatter.dateFormat = "HH: mm"
            let date24 = dateFormatter.string(from: date!)
            
            return date24
        }
        
        cell.dateLabel.text = unixTimeConvertion(unixTime: time)
        
//        if let timeResult = (time as? Double) {
//            let date = Date(timeIntervalSince1970: timeResult)
//            cell.dateLabel.text = "\(date)"
//            print(date)
//        }
        cell.tempLabel.text = "\(weatherData.main.temp)"
        cell.feelsLikeLabel.text = "\(weatherData.main.feels_like)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        tableV.delegate = self
        tableV.dataSource = self
        
        weatherGetter.getMowForecast { (data, status) in
            if let data = data, status {
                self.tableData = data.list
                DispatchQueue.main.async {
                    self.tableV.reloadData()
                }
            } else if status {
                print("-------- Ошибка разбора данных прогноза погоды --------")
            } else {
                print("-------- Ошибка получения данных прогноза погоды --------")
            }
        }
    }
}
