my_array = Array(1..16);

i=0
my_array.each {|el| puts "#{my_array[i]}, #{my_array[i+1]}, #{my_array[i+2]}, #{my_array[i+3]}" if i % 4 == 0; i+=1}

my_array.each_with_index {|el,j| puts "#{my_array[j]}, #{my_array[j+1]}, #{my_array[j+2]}, #{my_array[j+3]}" if j % 4 == 0}

my_array.each_slice(4) {|slice| puts "#{slice[0]}, #{slice[1]}, #{slice[2]}, #{slice[3]}"}
