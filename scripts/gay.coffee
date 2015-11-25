# Description:
#   Call out your friends with quotes about how gay they are
#
# Commands:
#   hubot gay <name> - Gets a random gay quote with their name inserted
#
# Author:
#   dphaener

QUOTES = [
  "<name> is a really queer bastard",
  "I like it when <name> jerks me off"
]

module.exports = (robot) ->
  robot.respond /(gay)( .*)/i, (msg) ->
    message = msg.random(QUOTES).replace(/<name>/, msg.match[2])
    msg.send(message)
