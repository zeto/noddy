Tracker = require '../../lib/tracker'
assert = require 'assert'

module.exports = {
  "Tracker has empty list of clients" : ->
    tracker = new Tracker

    assert tracker.clients.size == 0
}