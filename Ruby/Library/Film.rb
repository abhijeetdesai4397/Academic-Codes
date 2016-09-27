require_relative 'Media'

class Film < Media
	def initialize(type,callNumber,title,subjects,directors,notes,year)
		super(type,callNumber,title,subjects,notes)
		@directors=directors
		@year=year
	end

	def display
		puts "Type:#@type"
	    puts "CallNumber: #@callNumber"
	    puts "Title: #@title"
	    puts "Subjects: #@subjects"  
	    puts "Directors: #@directors"
	    puts "Year: #@year"
	    puts "Notes : #@notes"
	end
end