subject = require "../src/number_converter.coffee"

describe "NumberConverter", ->
  context "0", ->
    Given -> @input = ' _ | ||_|'
    When  -> @output = subject(@input)
    Then  -> @output == 0

  context "1", ->
    Given -> @input = '     |  |'
    When  -> @output = subject(@input)
    Then  -> @output == 1

  context "5", ->
    Given -> @input = ' _ |_  _|'
    When  -> @output = subject(@input)
    Then  -> @output == 5
