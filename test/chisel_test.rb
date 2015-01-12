require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'
require './lib/chunk'
require './lib/chunk_detector'
require './lib/paragraph'
require './lib/heading'


class ChiselTest < Minitest::Test
	attr_reader :chisel

	def setup 
		@chisel = Chisel.new
	end

	def test_it_exists
		assert Chisel
  end

  def test_it_breaks_each_line_into_an_array
  	results = chisel.lines("Paragraph1
Paragraph2")
  	assert_equal ["Paragraph1", "Paragraph2"], results
  end

  def test_it_seperates_into_header_groups
  end

end