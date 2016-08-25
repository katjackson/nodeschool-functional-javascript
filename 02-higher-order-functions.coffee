repeat = (operation, num) ->
  for i in [1..num]
    operation()

module.exports = repeat
