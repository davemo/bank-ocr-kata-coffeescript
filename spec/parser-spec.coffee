_ = require "lodash"
invertedNumberMap = _.invert(require("../src/number_map.coffee"))
subject = require "../src/line_combiner.coffee"

describe "LineCombiner", ->
  Given ->
    @input =
      [" _     _  _     _  _  _  _  _ ",
       "| |  | _| _||_||_ |_   ||_||_|",
       "|_|  ||_  _|  | _||_|  ||_| _|"].join("\n")

  When -> @output = subject(@input)
  Then -> @output[0] == invertedNumberMap[0]
  Then -> @output[1] == invertedNumberMap[1]
  Then -> @output[2] == invertedNumberMap[2]
  Then -> @output[3] == invertedNumberMap[3]
  Then -> @output[8] == invertedNumberMap[8]
  Then -> @output[9] == invertedNumberMap[9]
