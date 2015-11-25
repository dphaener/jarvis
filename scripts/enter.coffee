# Description:
#   Give your friends a nice quote when they enter the room
#
# Author:
#   dphaener
#
QUOTES = [
  "Hello there <name> you gay pirate",
  "Welcome <name>, don't drop the soap"
]

module.exports = (robot) ->
  robot.enter (res) ->
    res.send res.random(QUOTES).replace(/<name>/, res.message.user.name)
