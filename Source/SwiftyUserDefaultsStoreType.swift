//
//  SwiftyUserDefaultsStoreType.swift
//  SwiftyUserDefaultsStore
//
//  Created by yuzushioh on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import Foundation

public protocol SwiftyUserDefaultsStoreType {
    var userDefaults: NSUserDefaults { get }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Bool?>) -> Bool?
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int?>) -> Int?
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int64?>) -> Int64?
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Double?>) -> Double?
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<String?>) -> String?
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Bool>) -> Bool
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int>) -> Int
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int64>) -> Int64
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Double>) -> Double
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<String>) -> String
    
    func setUserDefaultsValue(value: Bool?, forKey storeKey: UserDefaultsStoreKey<Bool?>)
    func setUserDefaultsValue(value: Int?, forKey storeKey: UserDefaultsStoreKey<Int?>)
    func setUserDefaultsValue(value: Int64?, forKey storeKey: UserDefaultsStoreKey<Int64?>)
    func setUserDefaultsValue(value: Double?, forKey storeKey: UserDefaultsStoreKey<Double?>)
    func setUserDefaultsValue(value: String?, forKey storeKey: UserDefaultsStoreKey<String?>)
    
    func setUserDefaultsValue(value: Bool, forKey storeKey: UserDefaultsStoreKey<Bool>)
    func setUserDefaultsValue(value: Int, forKey storeKey: UserDefaultsStoreKey<Int>)
    func setUserDefaultsValue(value: Int64?, forKey storeKey: UserDefaultsStoreKey<Int64>)
    func setUserDefaultsValue(value: Double, forKey storeKey: UserDefaultsStoreKey<Double>)
    func setUserDefaultsValue(value: String, forKey storeKey: UserDefaultsStoreKey<String>)
}

public extension SwiftyUserDefaultsStoreType {
    var userDefaults: NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Bool?>) -> Bool? {
        return userDefaults.objectForKey(storeKey.key) as? Bool
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int?>) -> Int? {
        return userDefaults.objectForKey(storeKey.key) as? Int
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int64?>) -> Int64? {
        return userDefaults.objectForKey(storeKey.key) as? Int64
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Double?>) -> Double? {
        return userDefaults.objectForKey(storeKey.key) as? Double
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<String?>) -> String? {
        return userDefaults.objectForKey(storeKey.key) as? String
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Bool>) -> Bool {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Bool else {
            return false
        }
        
        return value
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int>) -> Int {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return 0
        }
        
        return value
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Int64>) -> Int64 {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int64 else {
            return 0
        }
        
        return value
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<Double>) -> Double {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Double else {
            return 0.0
        }
        
        return value
    }
    
    func userDefaultsValueForKey(storeKey: UserDefaultsStoreKey<String>) -> String {
        guard let value = userDefaults.objectForKey(storeKey.key) as? String else {
            return ""
        }
        
        return value
    }
    
    func setUserDefaultsValue(value: Bool?, forKey storeKey: UserDefaultsStoreKey<Bool?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: Int?, forKey storeKey: UserDefaultsStoreKey<Int?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: Int64?, forKey storeKey: UserDefaultsStoreKey<Int64?>) {
        userDefaults.setObject(value.map(NSNumber.init), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: Double?, forKey storeKey: UserDefaultsStoreKey<Double?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: String?, forKey storeKey: UserDefaultsStoreKey<String?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: Bool, forKey storeKey: UserDefaultsStoreKey<Bool>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: Int, forKey storeKey: UserDefaultsStoreKey<Int>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: Int64?, forKey storeKey: UserDefaultsStoreKey<Int64>) {
        userDefaults.setObject(value.map(NSNumber.init), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: Double, forKey storeKey: UserDefaultsStoreKey<Double>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setUserDefaultsValue(value: String, forKey storeKey: UserDefaultsStoreKey<String>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
}

extension NSUserDefaults: SwiftyUserDefaultsStoreType { }

