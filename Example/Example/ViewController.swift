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
        userState.isLoggedIn = false
        
        print(userState.username)
        print(userState.userId)
        print(userState.isLoggedIn)
    }
}

class UserState {
    let usernameKey = StoreKey<String>(key: "username")
    let userIdKey = StoreKey<Int>(key: "userId")
    let isLoggedInKey = StoreKey<Bool>(key: "isLoggedIn")
    
    var username: String? {
        get {
            return usernameKey.value
        }
        set {
            usernameKey.value = newValue
        }
    }
    
    var userId: Int {
        get {
            return userIdKey.value ?? 0
        }
        set {
            userIdKey.value = newValue
        }
    }
    
    var isLoggedIn: Bool {
        get {
            return isLoggedInKey.value ?? false
        }
        set {
            isLoggedInKey.value = newValue
        }
    }
}

