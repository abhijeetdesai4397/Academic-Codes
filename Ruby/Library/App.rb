require_relative 'Book'

class App
	def initialize()
		@mediaList=Array.new
		index=0
		bookFile=IO.readlines("book.txt")
		bookFile.each do |line|
			bookArray=line.split("|")
			book=Book.new("Book",bookArray[0],bookArray[1],bookArray[2],bookArray[3],bookArray[4],bookArray[5],bookArray[6],bookArray[7],bookArray[8],bookArray[9])
			@mediaList[index]=book
			index+=1
			break
		end
		fileFile=IO.readlines("film.txt")
		filmFile.each do |line|
			filmArray=line.split("|")
			film=Media.new("Film",filmArray[0],filmArray[1],filmArray[2],filmArray[3],filmArray[4],filmArray[5])
			@mediaList[index]=film
			index+=1
		end
	end	

	def searchByCallNumer(callNumber)
		resultList=Array.new
		@mediaList.each do |media|
			if media.searchByCallNumber(callNumber)
				resultList.push(media)
			end
		end
		return resultList
	end
end

app=App.new
puts "Enter call Number"
callNumber=gets.chomp
resultList=app.searchByCallNumer(callNumber)
resultList.each do |media|
	media.display()
	puts "-------------------------------------------------------------------------------"
end