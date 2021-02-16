//
//  UserNamePersistance.swift
//  lesson14
//
//  Created by Konstantin Moskvichev on 15.02.2021.
//

import Foundation

class UserNamePersistance{
    static let storage = UserNamePersistance()
    
    private let kfirstNameKey = "UserNamePersistance.kfirstNameKey"
    var firstName: String?{
        set {UserDefaults.standard.set(newValue, forKey: kfirstNameKey)}
        get {return UserDefaults.standard.string(forKey: kfirstNameKey)}
    }
    
    private let lastNameKey = "UserNamePersistance.lastNameKey"
    var lastName: String?{
        set {UserDefaults.standard.set(newValue, forKey: lastNameKey)}
        get {return UserDefaults.standard.string(forKey: lastNameKey)}
    }
}
