//
//  CategoriesLoader.swift
//  SBiOS_m12
//
//  Created by Dmitry Aksyonov on 18.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation
//import SVProgressHUD
//import Alamofire

class CategoriesLoader {
    
    func loadCategories(completion: @escaping ([Category]) -> Void) {
        
        let url = URL(string: "https://blackstarwear.ru/index.php?route=api/v1/categories")!
        let request = URLRequest(url: url)
//        SVProgressHUD.show()
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data,
                let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments),
                let jsonDict = json as? NSDictionary {
                
                var categories: [Category] = []
                
                for (_, data) in jsonDict where data is NSDictionary {
                    if let category = Category(data: data as! NSDictionary) {categories.append(category)}
                }
                
                print(categories)
                print()
                
                DispatchQueue.main.async {
//                    SVProgressHUD.dismiss()
                    completion(categories)
                }
            }
        }
        
        task.resume()
    }
    
//    func loadCategories2(completion: @escaping ([Category]) -> Void) {
//        SVProgressHUD.show()
//        Alamofire.request("https://blackstarshop.ru/index.php?route=api/v1/categories").responseJSON { response in
//            if let objects = response.result.value,
//                let jsonDict = objects as? NSDictionary  {
//                var categories: [Category] = []
//                for (_, data) in jsonDict where data is NSDictionary {
//                    if let category = Category(data: data as! NSDictionary) {
//                        categories.append(category)
//                    }
//                }
//                
//                DispatchQueue.main.async {
//                    SVProgressHUD.dismiss()
//                    completion(categories)
//                }
//
//            }
//        }
//    }
}
