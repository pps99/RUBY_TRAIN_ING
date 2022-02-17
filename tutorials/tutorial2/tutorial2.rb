def input
  require "date"
  date = Date.today
  puts "Put The DOB in the Format yyyymmdd"
  dob = gets.chomp
  user_dob = Date.parse(dob)

  if Date.valid_date? user_dob.year.to_i, user_dob.month.to_i, user_dob.day.to_i
    user_age = date.year - user_dob.year
    if user_age > 18
      puts "#{user_age},adult"
    else
      puts "#{user_age},child"
    end
  end
end

input
