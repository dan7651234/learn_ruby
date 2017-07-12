#write your code here
def echo phrase
  return phrase.to_s
end

def shout phrase
  return phrase.to_s.upcase
end

def repeat phrase, *count
  result = ""
  if count == [] || count[0] == 1 || count[0] == 2
    return phrase.to_s + " " + phrase.to_s
  else
    count[0].times do |x|
      result = result + " " + phrase.to_s
    end
  end
  return result.strip
end

def start_of_word word, *letters
  result = ""
  if letters == [] || letters[0] == 1
    return word[0]
  else
    letters[0].times do |x|
      result = result + word[x].to_s
    end
  end
  return result
end

def first_word phrase
  phrase = phrase.split
  return phrase[0].to_s
end

def titleize phrase
  result = ""
  firstPosition = true
  phrase = phrase.split
  littleWords = ["and","or","the","over"]
  phrase.each do |x|
    if firstPosition == true
      result = result + " " + x.capitalize
      firstPosition = false
    elsif littleWords.include? x
      result = result + " " + x
    else
      result = result + " " + x.capitalize
    end
  end
  return result.strip
end
