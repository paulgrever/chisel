
class Chunk
	attr_reader :by_line

	def line_splitter(input)
		#breaks each line of text into an array
		@by_line = input.split(/\n/)
	end

end

# test = Chunk.new
# p test.line_splitter("Paragraph1
# Paragraph2")