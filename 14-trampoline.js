// Generated by CoffeeScript 1.10.0
(function() {
  var repeat, trampoline;

  repeat = function(operation, num) {
    if (num <= 0) {
      return;
    }
    operation();
    return function() {
      return repeat(operation, --num);
    };
  };

  trampoline = function(fn) {
    var result;
    result = fn.apply(this, arguments);
    while (typeof result === 'function') {
      result = result();
    }
    return result;
  };

  module.exports = function(operation, num) {
    return trampoline(repeat(operation, num));
  };

}).call(this);