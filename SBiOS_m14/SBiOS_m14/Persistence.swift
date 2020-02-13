//
//  Peristence.swift
//  SBiOS_m14
//
//  Created by Dmitry Aksyonov on 09.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation
import RealmSwift

class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
    @objc dynamic var owner: Human?
}

class Human: Object {
    @objc dynamic var name = ""
    let dogs = List<Dog>()
}

class Garbage: Object {
    @objc dynamic var name  = ""
}

class Persistence {
    static let shared = Persistence()
    
    private let realm = try! Realm()
    
    func test() {
        let human = Human()
        human.dogs.append(Dog())
        
        let dog = Dog()
        dog.owner = human
        
        let garbage = realm.objects(Garbage.self).first!
        
        try! realm.write {
            realm.delete(garbage)
            
            
            for g in realm.objects(Garbage.self) {
                print("-- \(g.name)")
            }
        }
    }
}
 
