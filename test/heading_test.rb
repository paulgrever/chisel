require 'minitest/autorun'
require 'minitest/pride'
require './lib/heading'

class HeadingTest < Minitest::Test
  attr_reader :header

  def setup 
    @header = Heading.new
  end

  def test_it_exists
    assert Heading
  end

  def test_it_can_count_headers
    results = header.counter("#")
    assert_equal 1, results
  end

  def test_it_can_count_two_headers
    results = header.counter("##")
    assert_equal 2, results
  end

  def test_it_can_count_multiple_headers
    results = header.counter("###")
    assert_equal 3, results
    results = header.counter("####")
    assert_equal 4, results
    results = header.counter("#####")
    assert_equal 5, results
  end

  def test_it_changes_the_input_string_to_an_array
    results = header.input_array("## Paul Grever")
    assert_equal ["##", "Paul", "Grever"], results
  end

  def test_it_adds_a_closing_tag_with_the_correct_header_2
    results = header.adds_closing_tags("## Paul Grever")
    assert_equal ["##", "Paul", "Grever", "</h2>"], results
  end

  def test_it_adds_a_closing_tag_with_the_correct_header_4
    results = header.adds_closing_tags("#### Paul Grever")
    assert_equal ["####", "Paul", "Grever", "</h4>"], results
  end

  def test_it_removes_the_markdown_language
    results = header.deleting_markdown_lang("## Paul Grever")
    assert_equal ["Paul", "Grever", "</h2>"], results
  end

  def test_it_adds_opening_tags
    results = header.add_opening_tags("## Paul Grever")
    assert_equal ["<h2>","Paul", "Grever", "</h2>"], results
  end

  def test_it_adds_opening_tags_with_4_headers
    results = header.add_opening_tags("#### Paul Grever")
    assert_equal ["<h4>","Paul", "Grever", "</h4>"], results
  end

  def test_it_changes_the_array_back_to_a_string
    results = header.output_string("#### Paul Grever")
    assert_equal "<h4> Paul Grever </h4>", results
  end

end
  

