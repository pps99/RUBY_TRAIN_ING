require "date"

def printDate
  arr = Array.new()
  date = Date.today
  puts "Current Day is"
  puts date.strftime("%a")
  puts "Last 5 Days are"
  5.times do
    date -= 1
    arr << date.strftime("%a")
  end

  print arr.join(",")
end

printDate
