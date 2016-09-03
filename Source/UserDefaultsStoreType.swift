//
//  SwiftyUserDefaultsStoreType.swift
//  SwiftyUserDefaultsStore
//
//  Created by yuzushioh on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import Foundation

public protocol UserDefaultsStoreType {
    associatedtype Type
    var userDefaults: NSUserDefaults { get }
    var key: String { get }
    var value: Type? { get }
    
    func userDefaultsValue() -> Type?
    func setUserDefaultsValue(value: Type?)
}

public extension UserDefaultsStoreType {
    public var userDefaults: NSUserDefaults {
        return NSUserDefaults.standardUserDefaults()
    }
    
    public func userDefaultsValue() -> Type? {
        return userDefaults.objectForKey(key) as? Type
    }
    
    public func setUserDefaultsValue(value: Type?) {
        userDefaults.setObject(value as? AnyObject, forKey: key)
    }
}
