//
//  RealmData.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 11.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: - class for Realm data model to store task text and completion status
class ToDoObject: Object {
    @objc dynamic var toDoText = ""
    @objc dynamic var isDone = false
}
