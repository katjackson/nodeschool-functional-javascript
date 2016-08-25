Spy = (target, method) ->
  spy =
    count: 0
  spyMethod = target[method]
  target[method] = ->
    ++spy.count
    spyMethod.apply(@, arguments)
  return spy

module.exports = Spy
