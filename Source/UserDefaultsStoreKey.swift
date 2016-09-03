//
//  SwiftyUserDefaultsStore.swift
//  SwiftyUserDefaultsStore
//
//  Created by yuzushioh on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import Foundation

public class StoreKey<T>: UserDefaultsStoreType {
    public let key: String
    public init(key: String) {
        self.key = key
    }
    
    public var value: T? {
        get {
            return userDefaultsValue()
        }
        set {
            setUserDefaultsValue(newValue)
        }
    }
}

