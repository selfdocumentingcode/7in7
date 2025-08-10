file = File.open('futurama_ipsum.txt', 'r')

search = 'you'
matches = {}
i = 0
file.each_line {|line|
  hits = line.scan(/#{search}/)

  matches[i] = hits if hits.any?
  
  i=i+1
}

puts matches