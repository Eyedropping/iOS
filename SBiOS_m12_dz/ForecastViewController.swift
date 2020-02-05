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
    
    var tableData: WeatherForecast?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData?.list.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableVCCell
        //        cell.dayLabel = tableData?.list
        cell.dateLabel.text = "\(self.tableData?.list[indexPath.row].dt)"
        cell.tempLabel.text = "\(self.tableData?.list[indexPath.row].main.temp)"
        cell.feelsLikeLabel.text = "\(self.tableData?.list[indexPath.row].main.feels_like)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        tableV.delegate = self
        tableV.dataSource = self
        
        weatherGetter.getMowForecast { (data, status) in
            if let data = data, status {
            } else if status {
                print("-------- Ошибка разбора данных прогноза погоды --------")
            } else {
                print("-------- Ошибка получения данных прогноза погоды --------")
            }
            self.tableData = data
        }
        
        print(self.tableData?.list.count) // отдает нил - надо вернуть из функции - запнулся на этом
        
        self.tableData = weatherGetter.getMowForecast(completion: ((tableData, true))) // ошибка - Cannot convert value of type '(WeatherForecast?, Bool)' to expected argument type '((WeatherForecast?, Bool)) -> Void'
    }
}
