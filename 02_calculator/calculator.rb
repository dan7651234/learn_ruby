#write your code here
def add num1, num2
  result = num1 + num2
  return result
end

def subtract num1, num2
  result = num1 - num2
  return result
end

def sum nums
  result = 0
  nums.each {|x| result = result + x}
  return result
end

def multiply *nums
  result = 1
  nums.each {|x| result = result * x}
  return result
end

def power num1, num2
  result = num1**num2
  return result
end

def factorial num
  num = num.to_i
  if num == 0 || num == 1
    return 1
  else
    i = num - 1
    while i > 1
      num = num * i
      i = i - 1
    end
  end
  return num
end
