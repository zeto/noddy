http = require('http')
Tracker = require('../lib/tracker') 

exports.index = (req, res) ->
  #console.log(req)
  res.render('index', { title: 'Ola', clients: (new Tracker).clients })

exports.goog = (req, res) ->
  options = { host: 'google.com', path: '/' }
  
  str = ''

  callback = (response) ->
    response.on 'data', (chunk) ->
      str += chunk
    response.on 'end', -> 
      str

  #pub = http.request(options, callback).end()
  res.render('index', { title: 'Goog', clients: (new Tracker).clients })
  
