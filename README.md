# SwiftyUserDefaultsStore

#### Simple Swift Wrapper for `NSUserDefaults`
###### Define your keys in one place, Use value type easily, Get access from everywhere✈️

## Usage
**There's only three steps to set up SwiftyUserDefaultsStore:**

Step 1: Define userDefaults keys.

```swift
  let username = UserDefaultsStoreKey<String>(key: "username") // Returns non-optional value.
  let userId = UserDefaultsStoreKey<Int64?>(key: "userId")     // Returns optional value
  static let openAppCount = UserDefaultsStoreKey<Int>(key: "openAppCount") // You can use static as well
  static let isLoggedIn = UserDefaultsStoreKey<Bool>(key: "isLoggedIn")
```

Step 2: Create a class that comfirms to `SwiftyUserDefaultsStoreType` and define properties.

```swift
    let username = valueForStoreKey(username)
    setNewValue(response.username, forStoreKey: username)
    
    var userId: Int64? {
        get {
            return valueForStoreKey(userId)
        }
        set {
            setNewValue(newValue, forStoreKey: userId)
        }
    }
    
    static let openAppCount = valueForStoreKey(openAppCount)
    setNewValue(newCount, forStoreKey: openAppCount)
    
    static var isLoggedIn: Bool {
        get {
            return valueForStoreKey(isLoggedIn)
        }
        set {
            setNewValue(newValue, forStoreKey: isLoggedIn)
        }
    }
```

Step 3: Use it wherever you want🎉

```swift
  if isLoggedIn {
    label.text = username
  }
  
  userId = response.userId
```
## Features

### Supported types

SwiftyUserDefaultsStore currently supports limited types, like strings, numbers, booleans.
It would be appreciated to recieve pull requests adding more types🙇

## Installation

#### Carthage

- Insert `github "yuzushioh/SwiftyUserDefaultsStore"` to your Cartfile.
- Run carthage update.

#### Manually

- Copy `Sources` to your Xcode project.

## Pull Requests?
Absolutely!

## License
__SwiftyUserDefaultsStore__ is available under the MIT license. See LICENSE.txt for details.
