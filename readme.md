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


The MIT License (MIT)
---

Copyright © `2017` `Eric Boxer`

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the “Software”), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
