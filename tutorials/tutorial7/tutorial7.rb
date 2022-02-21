class Person
  attr_accessor :name

  def initialize(name)
    @person_name = name
  end

  def print_name
    puts "The name of the person is #{@person_name}"
  end
end

class Student < Person
  attr_accessor :roll_number

  def initialize(name, roll_number)
    @person_name = name
    @student_rn = roll_number
  end

  def print_roll
    puts "Roll number is #{@student_rn}"
  end
end

puts "Choose Person/Student ?"
user_choice = gets.chomp.to_s
if user_choice == "Person"
  puts "Enter the name"
  name = gets.chomp.to_s
  person = Person.new(name)
  person.print_name
elsif user_choice == "Student"
  puts "Enter the name"
  name = gets.chomp.to_s
  puts "Enter the roll_number"
  roll_number = gets.chomp.to_s
  student = Student.new(name, roll_number)
  student.print_name
  student.print_roll
else
  puts "Enter the valid choice"
end
