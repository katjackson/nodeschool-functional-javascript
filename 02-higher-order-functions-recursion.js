// Generated by CoffeeScript 1.10.0
(function() {
  var repeat;

  repeat = function(operation, num) {
    while (num > 0) {
      operation();
      return repeat(operation, num - 1);
    }
  };

  module.exports = repeat;

}).call(this);
