//
//  Realm_test.swift
//  Relm_test
//
//  Created by Dmitry Aksyonov on 09.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation
import RealmSwift

class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}

class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var picture: Data? = nil
    let dogs = List<Dog>()
}

class PersistentData {
    static let persistentDataSingleton = PersistentData()
    
    private let defaultRealm = try! Realm()
    
    func testRealm() {
//        let myDog = Dog()
//        let dimka = Person()
//
//        myDog.name = "Laika"
//        myDog.age = 3
//
//        dimka.name = "Dimka"
//        dimka.dogs.append(myDog)
//
//        try! defaultRealm.write {
//            defaultRealm.add(myDog)
//            defaultRealm.add(dimka)
//        }
//
//        for object in defaultRealm.objects(Dog.self) {
//            print(object.name)
//        }
        
        for object in defaultRealm.objects(Person.self) {
            print("\(object.name) has \(object.dogs.count) dogs. \n")
        }
        
        print("They are:")
        
        for dog in defaultRealm.objects(Person.self) {
            for index in dog.dogs {
                print("\(index.name)")
            }
        }
    }
}
