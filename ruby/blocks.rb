def in_case_of_emergency
  yield if alert?
end

def alert?
  true
end

in_case_of_emergency do 
  puts "Help!"
end