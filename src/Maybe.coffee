
formatType = require "formatType"
wrongType = require "wrongType"
Validator = require "Validator"
isType = require "isType"
Void = require "Void"

module.exports = Validator.Type "Maybe",

  init: (type) ->
    if Array.isArray type
      type.push Void
    else type = [ type, Void ]
    @type = type

  name: ->
    formatType @type

  test: (value) ->
    return yes if value is undefined
    return isType value, @type

  assert: (value, key) ->
    return if value is undefined
    return if isType value, @type
    wrongType this, key
