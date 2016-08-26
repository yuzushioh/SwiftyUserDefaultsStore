//
//  SwiftyUserDefaultsStore.swift
//  SwiftyUserDefaultsStore
//
//  Created by 福田涼介 on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import Foundation

public protocol SwiftyUserDefaultsStoreType {
    associatedtype UserDefaultsStoreKey: SwiftyUserDefaultsStoreKeyConvertible
    
    static var userDefaults: NSUserDefaults { get }
    
    static func hasValueForKey(key: UserDefaultsStoreKey) -> Bool

    static func valueForKey(key: UserDefaultsStoreKey) -> Bool?
    static func valueForKey(key: UserDefaultsStoreKey) -> Int?
    static func valueForKey(key: UserDefaultsStoreKey) -> Int64?
    static func valueForKey(key: UserDefaultsStoreKey) -> Double?
    static func valueForKey(key: UserDefaultsStoreKey) -> String?
    static func valueForKey(key: UserDefaultsStoreKey) -> NSDate?
    
    static func setValue(value: Bool?, forKey key: UserDefaultsStoreKey)
    static func setValue(value: Int?, forKey key: UserDefaultsStoreKey)
    static func setValue(value: Int64?, forKey key: UserDefaultsStoreKey)
    static func setValue(value: Double?, forKey key: UserDefaultsStoreKey)
    static func setValue(value: String?, forKey key: UserDefaultsStoreKey)
    static func setValue(value: NSDate?, forKey key: UserDefaultsStoreKey)
    
    var userDefaults: NSUserDefaults { get }
    
    func hasValueForKey(key: UserDefaultsStoreKey) -> Bool
    
    func valueForKey(key: UserDefaultsStoreKey) -> Bool?
    func valueForKey(key: UserDefaultsStoreKey) -> Int?
    func valueForKey(key: UserDefaultsStoreKey) -> Int64?
    func valueForKey(key: UserDefaultsStoreKey) -> Double?
    func valueForKey(key: UserDefaultsStoreKey) -> String?
    func valueForKey(key: UserDefaultsStoreKey) -> NSDate?
    
    func setValue(value: Bool?, forKey key: UserDefaultsStoreKey)
    func setValue(value: Int?, forKey key: UserDefaultsStoreKey)
    func setValue(value: Int64?, forKey key: UserDefaultsStoreKey)
    func setValue(value: Double?, forKey key: UserDefaultsStoreKey)
    func setValue(value: String?, forKey key: UserDefaultsStoreKey)
    func setValue(value: NSDate?, forKey key: UserDefaultsStoreKey)
}

public protocol SwiftyUserDefaultsStoreKeyConvertible {
    var userDefaultsKeyString: String { get }
}

extension SwiftyUserDefaultsStoreType {
    static var userDefaults: NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    
    static func hasValueForKey(key: UserDefaultsStoreKey) -> Bool {
        return userDefaults.objectForKey(key.userDefaultsKeyString) != nil
    }
    
    static func valueForKey(key: UserDefaultsStoreKey) -> Bool? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Bool
    }
    
    static func valueForKey(key: UserDefaultsStoreKey) -> Int? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Int
    }
    
    static func valueForKey(key: UserDefaultsStoreKey) -> Int64? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Int64
    }
    
    static func valueForKey(key: UserDefaultsStoreKey) -> Double? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Double
    }
    
    static func valueForKey(key: UserDefaultsStoreKey) -> String? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? String
    }
    
    static func valueForKey(key: UserDefaultsStoreKey) -> NSDate? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? NSDate
    }
    
    static func setValue(value: Bool?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    static func setValue(value: Int?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    static func setValue(value: Int64?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value.map(NSNumber.init), forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    static func setValue(value: Double?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    static func setValue(value: String?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    static func setValue(value: NSDate?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
}

extension SwiftyUserDefaultsStoreType {
    var userDefaults: NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    
    func hasValueForKey(key: UserDefaultsStoreKey) -> Bool {
        return userDefaults.objectForKey(key.userDefaultsKeyString) != nil
    }

    func valueForKey(key: UserDefaultsStoreKey) -> Bool? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Bool
    }
    
    func valueForKey(key: UserDefaultsStoreKey) -> Int? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Int
    }
    
    func valueForKey(key: UserDefaultsStoreKey) -> Int64? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Int64
    }
    
    func valueForKey(key: UserDefaultsStoreKey) -> Double? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? Double
    }
    
    func valueForKey(key: UserDefaultsStoreKey) -> String? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? String
    }
    
    func valueForKey(key: UserDefaultsStoreKey) -> NSDate? {
        return userDefaults.objectForKey(key.userDefaultsKeyString) as? NSDate
    }
    
    func setValue(value: Bool?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    func setValue(value: Int?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    func setValue(value: Int64?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value.map(NSNumber.init), forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    func setValue(value: Double?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    func setValue(value: String?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
    
    func setValue(value: NSDate?, forKey key: UserDefaultsStoreKey) {
        userDefaults.setObject(value, forKey: key.userDefaultsKeyString)
        userDefaults.synchronize()
    }
}