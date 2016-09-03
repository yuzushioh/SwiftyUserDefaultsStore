# SwiftyUserDefaultsStore

#### Simple Swift Wrapper for `NSUserDefaults`
###### Define your keys in one place, Use value type easily, Get access from everywhere✈️

## Usage
**There's only three steps to set up SwiftyUserDefaultsStore:**

Step 1: Define user Defaults keys.

```swift
  let usernameKey = StoreKey<String>(key: "username") // Returns non-optional value.
  let userIdKey = StoreKey<Int>(key: "userId")     // Returns optional value
```

Step 2: Use keys to get user defaults value

```swift
    // Getting user defaults value
    let username = usernameKey.value
    
    // Setting user defaults value
    usernameKey.value = newValue
    
    var userId: Int {
        get {
            return userIdKey.value ?? 0
        }
        set {
            userIdKey.value = newValue
        }
    }
```

Step 3: Use it wherever you want🎉

```swift
  if userId != 0 {
    label.text = username
  }
  
  userId = response.userId
```
## Features

### Supported types

SwiftyUserDefaultsStore currently supports limited types, like String, Int, Bool.
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
