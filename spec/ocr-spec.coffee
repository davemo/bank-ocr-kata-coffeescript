parser = require "../src/parser.coffee"

describe "KataBankOCR", ->

  describe "parsing", ->

    context "123456789", ->
      Given ->
        @entry =
          [" _     _  _     _  _  _  _  _ ",
           "| |  | _| _||_||_ |_   ||_||_|",
           "|_|  ||_  _|  | _||_|  ||_| _|"].join("\n")

      When -> @output = parser(@entry)
      Then -> @output == '0123456789'

    context "490067715", ->
      Given ->
        @entry =
            ["    _  _  _  _  _  _     _ ",
             "|_||_|| || ||_   |  |  ||_ ",
             "  | _||_||_||_|  |  |  | _|"].join("\n")

      When -> @output = parser(@entry)
      Then -> @output == '490067715'
