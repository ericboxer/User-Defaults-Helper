# User Defaults Helper [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
### A utility for standarzing UserDefaults in Swift
---
UDH helps keep track of UserDefaults programatically and helps standardize how things are stored making perisistance super simple

As you add items through subscripting they are automatically saved into the UserDefaults.

The first time UDH is called it creats a UserDefault Dictionary based on the applications bundle identifier.

Installation
---

Carthage
```
github "ericboxer/User-Defaults-Helper" >= 0.1.0
```

Ussage
---
Instantiation. Use `.instance` to help keep UDH a singleton 
```
let UDH = UserDefualtsHelper.instance
```

Setting a particular value via subscript
```
UDH[foo] = bar
```

Getting a particular value via subscript
```
print(UDH[foo])
// Returns "bar"
```

Clearing the saved settings
```
UDH.removeDefaults()
```

Todos
---
- Make the code look prettier
- Get the internal enums working to help standardization
- Clean up the variables... more private stuff
- Build Framework
- Make Cocoapods Compatable
- Make Carthage Compatable
