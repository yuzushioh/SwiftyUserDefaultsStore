//
//  ViewController.swift
//  Example
//
//  Created by 福田涼介 on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

struct UserDefaultsKeyStore {
    let username = UserDefaultsStoreKey<String>(key: "username")
    let userId = UserDefaultsStoreKey<Int64?>(key: "userId")
    let openAppCount = UserDefaultsStoreKey<Int>(key: "openAppCount")
    let isLoggedIn = UserDefaultsStoreKey<Bool>(key: "isLoggedIn")
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
}

