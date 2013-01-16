http = require('http')
Tracker = require('../lib/tracker') 

exports.index = (req, res) ->
  options = { host: 'google.com', path: '/' }
  
  str = ''

  callback = (response) ->
    response.on 'data', (chunk) ->
      str += chunk
    response.on 'end', -> 
      console.log str
      str

  pub = http.request(options, callback).end()
  res.render('index', { title: 'Ola', clients: (new Tracker).clients })
  
