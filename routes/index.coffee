http = require('http')

exports.index = (req, res) ->
  options = { host: 'publico.pt', path: '/' }
  
  callback = (response) ->
    response.on 'data', -> (chunk) str += chunk
    response.on 'end', -> console.log(str)

  pub = http.request(options, callback).end
  res.render('index', { title: pub.read })
  