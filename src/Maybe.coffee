
formatType = require "formatType"
wrongType = require "wrongType"
Validator = require "Validator"
isType = require "isType"

nothing = {name: "null/undefined"}

module.exports = Validator.Type "Maybe",

  init: (type) ->
    @type = type

  name: ->
    formatType [@type, nothing]

  test: (value) ->
    if value?
    then isType value, @type
    else yes

  assert: (value, key) ->
    return unless value?
    return if isType value, @type
    return wrongType this, key
