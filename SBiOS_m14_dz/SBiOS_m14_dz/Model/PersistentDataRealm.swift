//
//  RealmData.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 11.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    var tasks = List<String>()
}

class PersistentDataRealm {
    static let shared = PersistentDataRealm()
    
    private let realm = try! Realm()
}
