//
//  ViewController.swift
//  Example
//
//  Created by 福田涼介 on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userState = UserState()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userState.username = "yuzushioh"
        userState.userId = 12345
        userState.openAppCount = 90
        userState.isLoggedIn = false
        
        print(userState.username)
        print(userState.userId)
        print(userState.openAppCount)
        print(userState.isLoggedIn)
    }
}

struct UserDefaultsKeyStore {
    let username = UserDefaultsStoreKey<String>(key: "username")
    let userId = UserDefaultsStoreKey<Int64?>(key: "userId")
    let openAppCount = UserDefaultsStoreKey<Int>(key: "openAppCount")
    let isLoggedIn = UserDefaultsStoreKey<Bool>(key: "isLoggedIn")
    
    static let email = UserDefaultsStoreKey<String>(key: "email")
}

class UserState: SwiftyUserDefaultsStoreType {
    let store = UserDefaultsKeyStore()
    
    var username: String {
        get {
            return valueForStoreKey(store.username)
        }
        set {
            setNewValue(newValue, forStoreKey: store.username)
        }
    }
    
    var userId: Int64? {
        get {
            return valueForStoreKey(store.userId)
        }
        set {
            setNewValue(newValue, forStoreKey: store.userId)
        }
    }
    
    var openAppCount: Int {
        get {
            return valueForStoreKey(store.openAppCount)
        }
        set {
            setNewValue(newValue, forStoreKey: store.openAppCount)
        }
    }
    
    var isLoggedIn: Bool {
        get {
            return valueForStoreKey(store.isLoggedIn)
        }
        set {
            setNewValue(newValue, forStoreKey: store.isLoggedIn)
        }
    }
    
    static var email: String {
        get {
            return valueForStoreKey(UserDefaultsKeyStore.email)
        }
        set {
            setNewValue(newValue, forStoreKey: UserDefaultsKeyStore.email)
        }
    }
}

