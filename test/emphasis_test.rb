require 'minitest/autorun'
require 'minitest/pride'
require './lib/emphasis'

class EmphasisTest < Minitest::Test
  attr_reader :emphasis

  def test_it_exists
  	assert Emphasis
  end

end