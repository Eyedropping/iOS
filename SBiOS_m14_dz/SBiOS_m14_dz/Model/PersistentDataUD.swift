//
//  PersistentData.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 13.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation

class PersistentDataUserDefaults {
    static let shared = PersistentDataUserDefaults()
    
    private let fNameKey = "PersistantData.fNameKey"
    private let lNameKey = "PersistantData.lNameKey"
    
    var fName: String {
        set { UserDefaults.standard.setValue(newValue, forKey: fNameKey) }
        get { return UserDefaults.standard.string(forKey: fNameKey) ?? "nil" }
    }
    
    var lName: String {
        set { UserDefaults.standard.setValue(newValue, forKey: lNameKey) }
        get { return UserDefaults.standard.string(forKey: lNameKey)! }
    }
}
