def calculator
  puts "Enter the first number"
  f_number = gets.chomp.to_f
  puts "Enter the operator +-*/to perform"
  operator = gets.chomp
  puts "Enter the second number"
  s_number = gets.chomp.to_f

  if operator == "+"
    puts f_number + s_number
  elsif operator == "-"
    puts f_number - s_number
  elsif operator == "*"
    puts f_number * s_number
  elsif operator == "/"
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
  end until user_decision == "stop"
end

ask
