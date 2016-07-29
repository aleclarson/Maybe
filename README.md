
# Maybe v1.0.1 ![stable](https://img.shields.io/badge/stability-stable-4EBA0F.svg?style=flat)

A [`Validator`](https://github.com/aleclarson/Validator) that passes only for
values that are either `undefined` or are the `Maybe`'s expected type(s).

```coffee
Maybe = require "Maybe"

# Must be an array or undefined.
ArrayMaybe = Maybe Array

# Must be a string, boolean, or undefined.
StringBoolMaybe = Maybe [ String, Boolean ]
```
