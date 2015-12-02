# Future Considerations:

# Integration test to read from an actual file of multiple account numbers
# User Story 2,3 and 4 from http://codingdojo.org/cgi-bin/index.pl?KataBankOCR

LineCombiner = require "./line_combiner.coffee"
NumberConverter = require "./number_converter.coffee"

module.exports = (input) ->
  LineCombiner(input).map(NumberConverter).join('')
