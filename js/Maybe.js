var Validator, Void, formatType, isType, wrongType;

formatType = require("formatType");

wrongType = require("wrongType");

Validator = require("Validator");

isType = require("isType");

Void = require("Void");

module.exports = Validator.Type("Maybe", {
  init: function(type) {
    return this.type = type;
  },
  name: function() {
    if (Array.isArray(this.type)) {
      return formatType(this.type.concat(Void));
    } else {
      return formatType([this.type, Void]);
    }
  },
  test: function(value) {
    if (value === void 0) {
      return true;
    }
    return isType(value, this.type);
  },
  assert: function(value, key) {
    if (value === void 0) {
      return;
    }
    if (isType(value, this.type)) {
      return;
    }
    return wrongType(this, key);
  }
});

//# sourceMappingURL=map/Maybe.map
