random = require('hubot').Response::random

module.exports = (robot) ->
  dangos = [
    "http://i.imgur.com/FkmZBac.png"
    "http://livedoor.blogimg.jp/tomoyun-zubapedia/imgs/4/3/43692a0e.png"
    "http://livedoor.blogimg.jp/tomoyun-zubapedia/imgs/0/a/0a4e6569.png"
    "http://blog-imgs-50.fc2.com/t/a/k/takagireni555/658d6698-s.jpg"
    "http://i.ytimg.com/vi/jLOAQlTRMbI/0.jpg"
  ]

  robot.hear /dango/i, (msg) ->
    msg.send random dangos

  robot.hear /団子/i, (msg) ->
    msg.send random dangos
