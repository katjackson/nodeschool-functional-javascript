repeat = (operation, num) ->
  while num > 0
    operation()
    return repeat(operation, num - 1)

module.exports = repeat
