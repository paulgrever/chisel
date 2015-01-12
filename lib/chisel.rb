
require './lib/chunk_detector'
require './lib/heading'
require './lib/paragraph'
require './lib/chunk'
class Chisel

	def initialize 
		@chunk = Chunk.new
		@chunk_detector = ChunkDetector.new
		@header = Heading.new
		@paragraph = Paragraph.new
	end
 

	def lines(input)
		@chunk.line_splitter(input)
	end

	def header_seperator(input)
		by_line = lines(input)
		@headers = @chunk_detector.header_grouper(input)
		
	end
end

# test = Chisel.new
# t1 = test.parse("Paragrah1 Paragraph2 # header")
# p t1