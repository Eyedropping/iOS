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
        
        let unixTime = Double(weatherData.dt)
        
        let date = Date(timeIntervalSince1970: unixTime)
        let dateFormatter = DateFormatter()
        dateFormatter.
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.setLocalizedDateFormatFromTemplate("MMMd")
        dateFormatter.string(from: date)
        cell.dateLabel.text = "\(dateFormatter.string(from: date))"
        cell.dateLabel.textAlignment = .center
        
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.setLocalizedDateFormatFromTemplate("HH:mm")
        let time = dateFormatter.string(from: date)
        cell.timeLabel.text = time
        
        
        print(cell.dateLabel.text!)
        cell.tempLabel.text = "\(Int(weatherData.main.temp))"
        cell.feelsLikeLabel.text = "\(Int(weatherData.main.feels_like))"
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
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
