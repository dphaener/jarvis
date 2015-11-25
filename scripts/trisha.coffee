QUOTES = [
  "Yes I probably would",
  "Hmmmmmmm. How much again?",
  "Absolutely! She is a beast of a woman"
]

module.exports = (robot) ->
  robot.respond /(Trisha)/i, (msg) ->
    msg.send msg.random(QUOTES)
