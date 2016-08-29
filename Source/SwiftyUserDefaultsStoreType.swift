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
    
    static var userDefaults: NSUserDefaults { get }
    
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool?>) -> Bool?
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int?>) -> Int?
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64?>) -> Int64?
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double?>) -> Double?
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<String?>) -> String?
    
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool>) -> Bool
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int>) -> Int
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64>) -> Int64
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double>) -> Double
    static func valueForStoreKey(storeKey: UserDefaultsStoreKey<String>) -> String
    
    static func setNewValue(value: Bool?, forStoreKey storeKey: UserDefaultsStoreKey<Bool?>)
    static func setNewValue(value: Int?, forStoreKey storeKey: UserDefaultsStoreKey<Int?>)
    static func setNewValue(value: Int64?, forStoreKey storeKey: UserDefaultsStoreKey<Int64?>)
    static func setNewValue(value: Double?, forStoreKey storeKey: UserDefaultsStoreKey<Double?>)
    static func setNewValue(value: String?, forStoreKey storeKey: UserDefaultsStoreKey<String?>)
    
    static func setNewValue(value: Bool, forStoreKey storeKey: UserDefaultsStoreKey<Bool>)
    static func setNewValue(value: Int, forStoreKey storeKey: UserDefaultsStoreKey<Int>)
    static func setNewValue(value: Int64, forStoreKey storeKey: UserDefaultsStoreKey<Int64>)
    static func setNewValue(value: Double, forStoreKey storeKey: UserDefaultsStoreKey<Double>)
    static func setNewValue(value: String, forStoreKey storeKey: UserDefaultsStoreKey<String>)
}

public extension SwiftyUserDefaultsStoreType {
    public var userDefaults: NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool?>) -> Bool? {
        return userDefaults.objectForKey(storeKey.key) as? Bool
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int?>) -> Int? {
        return userDefaults.objectForKey(storeKey.key) as? Int
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64?>) -> Int64? {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return nil
        }
        
        return NSNumber(long: value).longLongValue
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double?>) -> Double? {
        return userDefaults.objectForKey(storeKey.key) as? Double
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<String?>) -> String? {
        return userDefaults.objectForKey(storeKey.key) as? String
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool>) -> Bool {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Bool else {
            return false
        }
        
        return value
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int>) -> Int {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return 0
        }
        
        return value
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64>) -> Int64 {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return 0
        }
        
        return NSNumber(long: value).longLongValue
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double>) -> Double {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Double else {
            return 0.0
        }
        
        return value
    }
    
    public func valueForStoreKey(storeKey: UserDefaultsStoreKey<String>) -> String {
        guard let value = userDefaults.objectForKey(storeKey.key) as? String else {
            return ""
        }
        
        return value
    }
    
    public func setNewValue(value: Bool?, forStoreKey storeKey: UserDefaultsStoreKey<Bool?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: Int?, forStoreKey storeKey: UserDefaultsStoreKey<Int?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: Int64?, forStoreKey storeKey: UserDefaultsStoreKey<Int64?>) {
        userDefaults.setObject(value.map(NSNumber.init), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: Double?, forStoreKey storeKey: UserDefaultsStoreKey<Double?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: String?, forStoreKey storeKey: UserDefaultsStoreKey<String?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: Bool, forStoreKey storeKey: UserDefaultsStoreKey<Bool>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: Int, forStoreKey storeKey: UserDefaultsStoreKey<Int>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: Int64, forStoreKey storeKey: UserDefaultsStoreKey<Int64>) {
        userDefaults.setObject(NSNumber(longLong: value), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: Double, forStoreKey storeKey: UserDefaultsStoreKey<Double>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public func setNewValue(value: String, forStoreKey storeKey: UserDefaultsStoreKey<String>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
}

extension SwiftyUserDefaultsStoreType {
    public static var userDefaults: NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool?>) -> Bool? {
        return userDefaults.objectForKey(storeKey.key) as? Bool
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int?>) -> Int? {
        return userDefaults.objectForKey(storeKey.key) as? Int
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64?>) -> Int64? {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return nil
        }
        
        return NSNumber(long: value).longLongValue
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double?>) -> Double? {
        return userDefaults.objectForKey(storeKey.key) as? Double
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<String?>) -> String? {
        return userDefaults.objectForKey(storeKey.key) as? String
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Bool>) -> Bool {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Bool else {
            return false
        }
        
        return value
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int>) -> Int {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return 0
        }
        
        return value
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Int64>) -> Int64 {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Int else {
            return 0
        }
        
        return NSNumber(long: value).longLongValue
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<Double>) -> Double {
        guard let value = userDefaults.objectForKey(storeKey.key) as? Double else {
            return 0.0
        }
        
        return value
    }
    
    public static func valueForStoreKey(storeKey: UserDefaultsStoreKey<String>) -> String {
        guard let value = userDefaults.objectForKey(storeKey.key) as? String else {
            return ""
        }
        
        return value
    }
    
    public static func setNewValue(value: Bool?, forStoreKey storeKey: UserDefaultsStoreKey<Bool?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: Int?, forStoreKey storeKey: UserDefaultsStoreKey<Int?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: Int64?, forStoreKey storeKey: UserDefaultsStoreKey<Int64?>) {
        userDefaults.setObject(value.map(NSNumber.init), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: Double?, forStoreKey storeKey: UserDefaultsStoreKey<Double?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: String?, forStoreKey storeKey: UserDefaultsStoreKey<String?>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: Bool, forStoreKey storeKey: UserDefaultsStoreKey<Bool>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: Int, forStoreKey storeKey: UserDefaultsStoreKey<Int>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: Int64, forStoreKey storeKey: UserDefaultsStoreKey<Int64>) {
        userDefaults.setObject(NSNumber(longLong: value), forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: Double, forStoreKey storeKey: UserDefaultsStoreKey<Double>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
    
    public static func setNewValue(value: String, forStoreKey storeKey: UserDefaultsStoreKey<String>) {
        userDefaults.setObject(value, forKey: storeKey.key)
        userDefaults.synchronize()
    }
}

extension NSUserDefaults: SwiftyUserDefaultsStoreType { }

