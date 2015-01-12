class Heading  

  def counter(input)
    #counts the number of ## in a line which will populate the header tag #
    input.count("#")
  end

  def input_array(input)
    #splits the initial text into an array
      input.split(" ")
  end

  def adds_closing_tags(input)
    #adds the closing tags

    @header_number = counter(input)
    @array_with_tags = input_array(input)
    @array_with_tags.push("</h#{@header_number}>")
  end

  def deleting_markdown_lang(input)
    #removes the markdown syntax 
    adds_closing_tags(input)
    @array_with_tags.shift
    @array_with_tags
  end

  def add_opening_tags(input)

    deleting_markdown_lang(input)
    @array_with_tags.unshift("<h#{@header_number}>")
  end

  def output_string(input)
    #rejoins the data back to a string
    add_opening_tags(input)
    @array_with_tags.join(" ")
  end

end

# test = Heading.new

# p test.output_string("## Paul Grever")
