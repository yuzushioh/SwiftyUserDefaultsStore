//
//  SwiftyUserDefaultsStore.swift
//  SwiftyUserDefaultsStore
//
//  Created by yuzushioh on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import Foundation

public let UserDefaultsStore = NSUserDefaults.standardUserDefaults()

public struct UserDefaultsStoreKey<T> {
    public let key: String
    public init(key: String) {
        self.key = key
    }
}

extension NSUserDefaults {
    public subscript(key: UserDefaultsStoreKey<Bool?>) -> Bool? {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<Bool>) -> Bool {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<Int?>) -> Int? {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<Int>) -> Int {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<Int64?>) -> Int64? {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<Int64>) -> Int64 {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<Double?>) -> Double? {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<Double>) -> Double {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<String?>) -> String? {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
    
    public subscript(key: UserDefaultsStoreKey<String>) -> String {
        get { return userDefaultsValueForKey(key) }
        set { setUserDefaultsValue(newValue, forKey: key) }
    }
}

