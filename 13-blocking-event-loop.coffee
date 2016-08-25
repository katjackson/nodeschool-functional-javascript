repeat = (operation, num) ->
  num = 4
  if num <= 0
    return
  operation()
  return setTimeout () ->
    repeat(operation, --num)

module.exports = repeat
