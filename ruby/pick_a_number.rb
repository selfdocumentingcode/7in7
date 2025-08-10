randomNumber = rand(10)

puts "Debug: #{randomNumber}"

while true

  puts "Pick a number!"

  inputN = gets.chomp
  n = inputN.to_i

  if n == 0 && inputN != "0"
    puts "Bad number"
    next
  end

  if n > randomNumber
    puts "Too high!"
  elsif n < randomNumber
    puts "Too low!"
  else 
    puts "You guessed it!"
    break
  end
    
end