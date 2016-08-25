getShortMessages = (objects) ->
  objects
    .filter (object) ->
      object.message.length < 50
    .map (filteredObject) ->
      filteredObject.message

module.exports = getShortMessages
