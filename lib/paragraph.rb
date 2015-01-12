class Paragraph

	def add_paragraph_tags(input)
		#add's paragraph tags to sections that are not headers
		p1 = "<p>"
		p2 = "</p>"
		text_with_tags = p1 + input + p2
		text_with_tags

	end

end

