//
//  Category.swift
//  SBiOS_m12
//
//  Created by Dmitry Aksyonov on 18.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class Category {
    let name: String
    let sortOrder: Int
    let imageURL: String
    
    init?(data: NSDictionary) {
        guard let name = data ["name"] as? String,
            let sortOrder = data ["sortOrder"] as? String,
            let imageURL = data ["image"] as? String else {
                return nil
        }
        
        self.name = name
        self.sortOrder = Int(sortOrder) ?? 0
        self.imageURL = imageURL
    }
}
