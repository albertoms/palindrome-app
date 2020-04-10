ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'rack/test'
require 'nokogiri'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

# Returns the DOM from the response.
def doc(response)
  Nokogiri::HTML(response.body)
end