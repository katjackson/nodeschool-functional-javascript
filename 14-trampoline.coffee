repeat = (operation, num) ->
  return if num <= 0
  operation()
  return () ->
    repeat(operation, --num)

trampoline = (fn) ->
  result = fn.apply(this, arguments)
  while typeof result is 'function'
    result = result()
  return result

module.exports = (operation, num) ->
  trampoline(repeat(operation, num))
