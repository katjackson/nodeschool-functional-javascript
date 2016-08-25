loadUsers = (userIds, load, done) ->
  users = []
  for user, i in userIds
    users[i] = load(user)
    if users.length = userIds.length
      done(users)

module.exports = loadUsers
