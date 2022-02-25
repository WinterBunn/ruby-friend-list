# String concatenation
first_name = "Carly"
last_name = "Rios"
full_name = first_name + " " + last_name
puts full_name

# String interpolation (only works in double quotes)
puts "My firt name is #{first_name} and my #{last_name} is Rios"

# Methods, how to find them
first_name.methods #displays all available methods
puts 10.class #display the type of object
puts 10.to_s.class #Example of chain methods

#Variable assingment
new_first_name = first_name

#Getting input from the user
puts "Enter your first name:"
first_name = gets.chomp

puts "Enter your last name:"
last_name = gets.chomp
puts "Welcome: #{first_name} #{last_name}"

puts "Enter a number to multiply by two"
input = gets.chomp #chomp alwas returns a string *
puts input.to_i * 2