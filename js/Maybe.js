// Generated by CoffeeScript 1.12.4
var Maybe, Validator, formatType, isType, nothing, wrongType;

formatType = require("formatType");

wrongType = require("wrongType");

Validator = require("Validator");

isType = require("isType");

nothing = {
  name: "null/undefined"
};

Maybe = Validator.Type("Maybe", {
  init: function(type) {
    return this.type = type;
  },
  name: function() {
    return formatType([this.type, nothing]);
  },
  test: function(value) {
    if (value != null) {
      return isType(value, this.type);
    } else {
      return true;
    }
  },
  assert: function(value, key) {
    if (value == null) {
      return;
    }
    if (isType(value, this.type)) {
      return;
    }
    return wrongType(this, key);
  }
});

module.exports = Maybe;
