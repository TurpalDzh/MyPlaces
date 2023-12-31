//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Turpal Dzhantamirov on 19.09.2023.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteobject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
