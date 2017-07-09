#write your code here
def ftoc fTemp
  fTemp = fTemp.to_f
  cTemp = ((fTemp - 32) * 5) / 9
  return cTemp
end

def ctof cTemp
  cTemp = cTemp.to_f
  fTemp = cTemp * 9 / 5 + 32
  return fTemp
end
