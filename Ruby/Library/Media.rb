class Media
  def initialize(type,callNumber,title,subjects,notes)
    @type=type
    @callNumber=callNumber
    @title=title
    @subjects=subjects
    @notes=notes
  end

  def searchByCallNumber(callNumber)
    return @callNumber.include?callNumber
  end
  
end

