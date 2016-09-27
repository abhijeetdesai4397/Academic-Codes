require_relative 'Media'

class Book < Media
  def initialize(type,callNumber,title,subjects,author,description,publisher,city,year,series,notes)
    super(type,callNumber,title,subjects,notes)
    @author=author
    @description=description
    @publisher=publisher
    @city=city
    @year=year
    @series=series
  end

  def display()
    #super()
    puts "Type:#@type"
    puts "CallNumber: #@callNumber"
    puts "Title: #@title"
    puts "Subjects: #@subjects"  
    puts "Author : #@author"
    puts "Description: #@description"
    puts "Publisher: #@publisher"
    puts "City: #@city"
    puts "Year: #@year"
    puts "series: #@series"
    puts "Notes : #@notes"
  end

end