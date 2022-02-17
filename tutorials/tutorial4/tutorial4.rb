def array
  animal_array = [10]

  for i in 0..9
    puts "Enter the value for the #{i} position in array"
    animal_array[i] = gets.chomp.to_s
  end
  puts "Original Array"
  print animal_array
  puts ""
  animal_array = animal_array.sort
  puts "Sorted the array and Printing the result"
  print animal_array
  puts ""
  puts "Counting the occurance of an element in an array"
  puts animal_array.uniq.map { |x| "#{x}=>#{animal_array.count(x)}" }.join(",")
  puts "Removed the duplicate elements and Printing the result"
  print animal_array.uniq
  puts ""
  puts "Reversed the array and Printing the result"
  print animal_array.reverse
  puts ""
end

array
