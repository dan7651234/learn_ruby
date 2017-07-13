#write your code here
def translate phrase
  vowels = ["a","e","i","o","u"]
  result = ""
  phrase = phrase.split
  phrase.each do |i|
    #if the first letter is a vowel, add "ay"
    if vowels.include? i[0]
      result = result + i + "ay "
    #We know the first letter is a consonant, check if second is also a consonant
    elsif !vowels.include? i[1]
      #check if 3rd is a consonant and if so, move all three letters to end
      if !vowels.include? i[2]
        result = result = i[3,i.length-1] + i[0,3] + "ay "
      else
        if i[1] == "q"
          result = result + i[3,i.length-1] + i[0,3] + "ay "
        else
          result = result + i[2,i.length-1] + i[0] + i[1] + "ay "
        end
      end
    #if only the first letter is a consonant
    else
      if i[0] == "q"
        result = result + i[2,i.length-1] + i[0,2] + "ay "
      else
        result = result + i[1,i.length-1] + i[0] + "ay "
      end
    end
  end
  result = result.strip
  return result
end
