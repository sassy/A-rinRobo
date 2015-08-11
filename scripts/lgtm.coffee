# Description:
#   LGTM
#
# Commands:
#   hubot lgtm - display image of looks good to me.

http = require 'http'
cheerio = require 'cheerio'
message = ''

module.exports = (robot) ->
    robot.respond /LGTM/i, (msg) ->
        req = http.get "http://www.lgtm.in/g", (res) ->
            res.on 'data', (str) ->
                message += str

            res.on 'end', () ->
                $ = cheerio.load message
                msg.send $('#imageUrl').val()
                message = ''
