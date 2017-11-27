# User Defaults Helper
### A utility for standarzing UserDefaults in Swift
---
UDH helps keep track of UserDefaults programatically and helps standardize how things are stored making perisistance super simple

As you add items through subscripting they are automatically saved into the UserDefaults.

The first time UDH is called it creats a UserDefault Dictionary based on the applications bundle identifier.



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
- 
