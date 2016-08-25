arrayMap = (input, operation) ->
  input.reduce (output, curr, i) ->
    output.push operation(curr)
    output
  , []

module.exports = arrayMap
