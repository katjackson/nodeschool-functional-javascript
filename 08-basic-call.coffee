duckCount = () ->
  birds = [arguments...]
  ducks = birds
    .filter (bird) ->
      Object.prototype.hasOwnProperty.call(bird, 'quack')
  ducks.length

module.exports = duckCount
