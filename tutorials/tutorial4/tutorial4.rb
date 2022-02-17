def array
  array_size = 10
  animal_array = Array.new(array_size)

  for i in 0..(array_size - 1)
    puts "Enter the value for the #{i} position in array"
    animal_array[i] = gets.chomp.to_s
  end
  puts "Original Array"
  print animal_array.join(",")
  puts
  animal_array = animal_array.sort
  puts "Sorted the array and Printing the result"
  print animal_array.join(",")
  puts
  puts "Counting the occurance of an element in an array"
  puts animal_array.uniq.map { |x| "#{x}=>#{animal_array.count(x)}" }.join(",")
  puts "Removed the duplicate elements and Printing the result"
  print animal_array.uniq.join(",")
  puts
  puts "Reversed the array and Printing the result"
  print animal_array.reverse.join(",")
  puts
end

array
