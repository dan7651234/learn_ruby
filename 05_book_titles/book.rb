class Book
# write your code here
  def initialize
    @title = ""
  end

  def title= newTitle
    @title = newTitle.to_s
  end

  def title
    titleSplitter = @title.split
    @title = ""
    littleWords = ["and", "or","is","in","of","the","a","an"]
    firstWord = true
    titleSplitter.each do |i|
      if !littleWords.include?(i) || firstWord == true
        @title = @title + i.capitalize + " "
        firstWord = false
      else
        @title = @title + i.downcase + " "
      end
    end
    @title = @title.strip
    return @title
  end
end
