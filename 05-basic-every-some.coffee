checkUsersValid = (goodUsers) ->
  allUsersValid = (submittedUsers) ->
    submittedUsers.every( (user) ->
      user.id in goodUsers.map( (validUser) ->
        validUser.id
      )
    )

module.exports = checkUsersValid
