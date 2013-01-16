class Tracker
  constructor: ->
    @clients = []

  clients: ->
    @clients

  connect: (client) ->
    @clients.push client

module.exports = Tracker
