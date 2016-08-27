//
//  SwiftyUserDefaultsStore.swift
//  SwiftyUserDefaultsStore
//
//  Created by yuzushioh on 8/27/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import Foundation

public struct UserDefaultsStoreKey<T> {
    public let key: String
    public init(key: String) {
        self.key = key
    }
}
