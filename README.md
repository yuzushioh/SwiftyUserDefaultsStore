# SwiftyUserDefaultsStore

#### Simple Swift Wrapper for `NSUserDefaults`
###### ここにDescription

## Usage
**There's only three steps to set up SwiftyUserDefaultsStore:**

Step 1: Define userDefaults keys.

```swift
  let username = UserDefaultsStoreKey<String>(key: "username")
  let userId = UserDefaultsStoreKey<Int64?>(key: "userId")
  let openAppCount = UserDefaultsStoreKey<Int>(key: "openAppCount")
  let isLoggedIn = UserDefaultsStoreKey<Bool>(key: "isLoggedIn")
```

Step 2: Create a class that comfirms to SwiftyUserDefaultsStoreType and define properties.

```swift
    var username: String {
        get {
            return valueForStoreKey(username)
        }
        set {
            setNewValue(newValue, forStoreKey: username)
        }
    }
    
    var userId: Int64? {
        get {
            return valueForStoreKey(userId)
        }
        set {
            setNewValue(newValue, forStoreKey: userId)
        }
    }
    
    var openAppCount: Int {
        get {
            return valueForStoreKey(openAppCount)
        }
        set {
            setNewValue(newValue, forStoreKey: openAppCount)
        }
    }
    
    var isLoggedIn: Bool {
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


