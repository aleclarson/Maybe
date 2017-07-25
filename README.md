
# Maybe v1.1.2 ![stable](https://img.shields.io/badge/stability-stable-4EBA0F.svg?style=flat)

The `Maybe` validator will test positive for:
- values of `this.type`
- `null`
- `undefined`

Built with [`Validator.Type`](https://github.com/aleclarson/Validator) to be used as a factory.

```coffee
Maybe = require "Maybe"

maybeArray = Maybe Array

# These all return true.
maybeArray.test []
maybeArray.test null
maybeArray.test undefined

# Anything else returns false.
```
