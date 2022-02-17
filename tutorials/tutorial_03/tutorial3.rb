def calculator
  puts "Enter the first number"
  f_number = gets.chomp.to_f
  puts "Enter the operator +-*/to perform"
  operator = gets.chomp
  puts "Enter the second number"
  s_number = gets.chomp.to_f

  case operator
  when "+"
    puts f_number + s_number
  when "-"
    puts f_number - s_number
  when "*"
    puts f_number * s_number
  when "/"
    puts f_number / s_number
  else
    puts "Enter the valid operator"
  end
end

def ask
  begin
    calculator
    puts "Write continue to calculate more and stop to stop calculate"
    user_decision = gets.chomp.to_s
    break if user_decision == "stop"
  end while user_decision == "continue"
end

ask
