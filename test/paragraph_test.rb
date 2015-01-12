require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph'

class ParagraphTest < Minitest::Test
	attr_reader :paragraph

	def setup
		@paragraph = Paragraph.new
	end

	def test_it_exists
    assert Paragraph
  end

  def test_it_adds_paragraphs_tags_to_front_and_end
  	 results = paragraph.add_paragraph_tags("This is the first line of the first paragraph.")
  	 assert_equal "<p>This is the first line of the first paragraph.</p>", results
  	end
end