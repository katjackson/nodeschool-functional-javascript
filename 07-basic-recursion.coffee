reduce = (inputWords, countWords, result, i=0) ->
  if inputWords.length
    countWords(result, inputWords[0], i, inputWords)
    return reduce(inputWords[1..], countWords, result, i+1)
  else
    return result

module.exports = reduce
