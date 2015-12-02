_ = require "lodash"

module.exports = (input) ->
  lines = input.replace(/\s$/, '').split("\n")
  chunked = lines.map (line) -> line.match(/.{1,3}/g)
  _.zip.apply(_, chunked).map (thing) -> thing.join('')


