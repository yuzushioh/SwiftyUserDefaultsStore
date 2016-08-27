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
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool?>) -> Bool?
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int?>) -> Int?
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64?>) -> Int64?
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double?>) -> Double?
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<String?>) -> String?
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool>) -> Bool
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int>) -> Int
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64>) -> Int64
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double>) -> Double
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<String>) -> String
    
    func setNewValue(value: Bool?, forStoreKey storeKey: UserDefaultsStoreKey<Bool?>)
    func setNewValue(value: Int?, forStoreKey storeKey: UserDefaultsStoreKey<Int?>)
    func setNewValue(value: Int64?, forStoreKey storeKey: UserDefaultsStoreKey<Int64?>)
    func setNewValue(value: Double?, forStoreKey storeKey: UserDefaultsStoreKey<Double?>)
    func setNewValue(value: String?, forStoreKey storeKey: UserDefaultsStoreKey<String?>)
    
    func setNewValue(value: Bool, forStoreKey storeKey: UserDefaultsStoreKey<Bool>)
    func setNewValue(value: Int, forStoreKey storeKey: UserDefaultsStoreKey<Int>)
    func setNewValue(value: Int64, forStoreKey storeKey: UserDefaultsStoreKey<Int64>)
    func setNewValue(value: Double, forStoreKey storeKey: UserDefaultsStoreKey<Double>)
    func setNewValue(value: String, forStoreKey storeKey: UserDefaultsStoreKey<String>)
}

public extension SwiftyUserDefaultsStoreType {
    var userDefaults: NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool?>) -> Bool? {
        return userDefaults.objectForKey(storeKey.key) as? Bool
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int?>) -> Int? {
        return userDefaults.objectForKey(storeKey.key) as? Int
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64?>) -> Int64? {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return nil
        }
        
        return NSNumber(long: value).longLongValue
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double?>) -> Double? {
        return userDefaults.objectForKey(storeKey.key) as? Double
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<String?>) -> String? {
        return userDefaults.objectForKey(storeKey.key) as? String
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool>) -> Bool {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Bool else {
            return false
        }
        
        return value
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int>) -> Int {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return 0
        }
        
        return value
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64>) -> Int64 {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return 0
        }
        
        return NSNumber(long: value).longLongValue
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double>) -> Double {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Double else {
            return 0.0
        }
        
        return value
    }
    
    func valueForStoreKey(storeKey: UserDefaultsStoreKey<String>) -> String {
        guard let value = userDefaults.objectForKey(storeKey.key) as? String else {
            return ""
        }
        
        return value
    }
    
    func setNewValue(value: Bool?, forStoreKey storeKey: UserDefaultsStoreKey<Bool?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: Int?, forStoreKey storeKey: UserDefaultsStoreKey<Int?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: Int64?, forStoreKey storeKey: UserDefaultsStoreKey<Int64?>) {
        userDefaults.setObject(value.map(NSNumber.init), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: Double?, forStoreKey storeKey: UserDefaultsStoreKey<Double?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: String?, forStoreKey storeKey: UserDefaultsStoreKey<String?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: Bool, forStoreKey storeKey: UserDefaultsStoreKey<Bool>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: Int, forStoreKey storeKey: UserDefaultsStoreKey<Int>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: Int64, forStoreKey storeKey: UserDefaultsStoreKey<Int64>) {
        userDefaults.setObject(NSNumber(longLong: value), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: Double, forStoreKey storeKey: UserDefaultsStoreKey<Double>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    func setNewValue(value: String, forStoreKey storeKey: UserDefaultsStoreKey<String>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
}

extension NSUserDefaults: SwiftyUserDefaultsStoreType { }

