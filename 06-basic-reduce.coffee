countWords = (inputWords) ->
  result = {}
  inputWords.reduce (prev, cur) ->
    result[cur] ?= 0
    ++result[cur]
  , {}
  return result

module.exports = countWords
