server = require('http').createServer (request, response) ->
  response.writeHead 200, {'Content-Type': 'text/plain'}
  response.end 'Node'

server.listen 8124

console.log 'Let\'s go at 8124'