
Maybe = require ".."

describe "Maybe()", ->

  it "allows undefined values", ->
    type = Maybe String
    expect type.test undefined
      .toBe yes

  it "allows values of the given type", ->
    type = Maybe String
    expect type.test "foo"
      .toBe yes
    expect type.test 1
      .toBe no

  it "supports an array of types", ->
    type = Maybe [ String, Boolean ]
    expect type.test "foo"
      .toBe yes
    expect type.test yes
      .toBe yes
    expect type.test null
      .toBe no
