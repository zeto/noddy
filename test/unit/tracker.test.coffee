Tracker = require '../../lib/tracker'
assert = require 'assert'

module.exports = {
  "Tracker has empty list of clients" : ->
    tracker = new Tracker
    tracker.clients.empty?

}