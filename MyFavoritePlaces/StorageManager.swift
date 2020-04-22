//
//  StorageManager.swift
//  MyFavoritePlaces
//
//  Created by Paul Max on 4/22/20.
//  Copyright © 2020 PaulmaX. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
