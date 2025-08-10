my_array = ["a", "b", "c"];

# my_array_to_hash = my_array.each_with_index.to_h
my_array_to_hash = my_array.map.with_index {|value, index| [index, value]}.to_h

puts my_array_to_hash
puts my_array_to_hash.class

my_hash_to_array = my_array_to_hash.values

puts my_hash_to_array
puts my_hash_to_array.class