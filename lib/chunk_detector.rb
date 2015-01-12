
#will be given an array with each line broken out.
class ChunkDetector
	attr_reader :header, :non_header

	def header?(input)
		#determines if the string is a head or not
		input.include?("#")
	end


	def header_grouper(input)
		#creates a new array of the text that is a header
		@headers = input.select { |h| header?(h)}
	end

	def non_header_grouper(input)
		#creates a new array of the test that isn't header
		@non_header = input.reject{|p| header?(p)}
	end

	def italic?(input)
		input.include?(/[*]/)
	end

end

# test = ChunkDetector.new
# p test.header?("## Paul")

# group = ["#Paul", "not", "##2"]

# p test.header_grouper(group)
# # t2 = group.select {|blah| header?(blah)}
# # p t2

# p test.non_header_grouper(group)

