logger = (namespace) ->
  return () ->
    console.log namespace, arguments...

module.exports = logger
