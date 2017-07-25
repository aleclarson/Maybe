
formatType = require "formatType"
wrongType = require "wrongType"
Validator = require "Validator"
isType = require "isType"

nothing = {name: "null/undefined"}

Maybe = Validator.Type "Maybe",

  init: (type) ->
    @type = type
    return

  name: ->
    formatType [@type, nothing]

  test: (value) ->
    if value?
    then isType value, @type
    else yes

  assert: (value, key) ->
    return unless value?

    if @type instanceof Validator
      return error if error = @type.assert value, key

    else unless isType value, @type
      return wrongType this, key

module.exports = Maybe
