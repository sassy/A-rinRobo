# Description:
#   A-rin Robot commands.
#
# Commands:
#   hubot sasaki - あーりんがかわいい顔で癒してあげるよ。
#   hubot good - あーりんがかわりに褒めてあげるよ
#   hubot どこいく？ - パラダイム！
#   hubot thx - ありがとうをかわりに言います。

random = require('hubot').Response::random

module.exports = (robot) ->
  images = [
    "http://pic.prepics-cdn.com/kakayu1215/26802143.jpeg"
    "http://livedoor.blogimg.jp/momoclomatomechannel/imgs/0/d/0de33ec5.jpg"
    "http://livedoor.blogimg.jp/harablack-geinousokuhou/imgs/b/e/bedee5e0.jpg"
    "http://livedoor.blogimg.jp/yasutomodaisuki/imgs/6/d/6db37a13.jpg"
    "http://momokuro-ayaka.agingcare.jp/wp/wp-content/uploads/2013/08/cf4b5af6.jpg"
    "http://pic.prepics-cdn.com/kakayu1215/26784748.jpeg"
    "http://c2.atwiki.asia/livia/2/2013/1111/ce611010b561e020114b.jpg"

  ]
  kakunis = [
    "http://blog-imgs-47.fc2.com/m/o/m/momoclonews/db49cb6f.jpg"
    "http://livedoor.blogimg.jp/twit_en/imgs/0/3/03f25c62.jpg"
    "http://livedoor.blogimg.jp/momoclomatomechannel/imgs/c/2/c2a18706-s.jpg"
    "http://livedoor.blogimg.jp/momoclomatomechannel/imgs/2/5/2531ecf7-s.jpg"
    "http://livedoor.blogimg.jp/momoclomatomechannel/imgs/8/7/8736348e-s.jpg"
  ]

  goods = [
    "http://livedoor.blogimg.jp/momoclomatome/imgs/1/3/1314d46e.jpg"
    "http://livedoor.blogimg.jp/momoclomatome/imgs/0/9/0962423e.jpg"
  ]

  pinks = [
    "http://img02.ti-da.net/usr/y/u/c/yuchan0321/c3544517.jpg"
    "http://livedoor.blogimg.jp/momoclomatomechannel/imgs/f/7/f70f37a4.jpg"
  ]

  robot.respond /sasaki/i, (msg) ->
    msg.send random images

  robot.hear /kakuni/i, (msg) ->
    msg.reply "誰が``角煮``や!"
    msg.send random kakunis

  robot.hear /角煮/i, (msg) ->
    msg.reply "誰が角煮や!"
    msg.send random kakunis

  robot.hear /ピンチ/i, (msg) ->
    msg.reply random pinks

  robot.enter (msg) ->
    msg.send "Hello"

  robot.leave (msg) ->
    msg.send "バイバイあーりん!"

  robot.respond /good/i, (msg) ->
    msg.send random goods

  robot.respond /どこ(い|行)く\？/i, (msg) ->
    msg.send "http://livedoor.blogimg.jp/momoakip555/imgs/2/a/2a744669.jpg"

  robot.respond /thx/i, (msg) ->
    msg.send "http://pbs.twimg.com/media/BxpTWt7CUAAT48K.jpg"

  robot.hear /acs\#(\d*)/i, (msg) ->
    query = msg.match[1]
    msg.send "https://acsmine.tok.access-company.com/redmine/issues/#{query}"

  robot.respond /shutdown/i, (msg) ->
    msg.send "バイバイあーりん https://s0.smlycdn.com/data/product2/2/822f5993c2e3b1f459062472c4907223821ecc43_m.jpg"
    setTimeout () ->
      process.exit 0
    , 2000
