//
//  ViewController.swift
//  SwiftyUserDefaultsStore
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

class Test {
    let username = UserDefaultsStoreKey<String>(key: "username")
    
    var user: String {
        get {
            return UserDefaultsStore[username]
        }
        set {
            UserDefaultsStore[username] = newValue
        }
    }
}

