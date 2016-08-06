puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is the hamster's volume level (1-10)?"
input = gets.chomp.to_i
until input > 0 && input < 11
	puts "Please enter a value between 1 - 10"
	input = gets.chomp.to_i
end
hamster_volume = input

puts "What is hamster's fur color?"
hamster_color = gets.chomp

puts "Is the hamster good candidate for adoption (Y/N)?"
input = gets.chomp
until input == "Y" || input == "N" || input == "y" || input == "n"
	puts "Please enter Y for yes or N for no"
	input = gets.chomp
end
candidate = input

puts "What is the hamster's estimated age?"
input = gets.chomp
if input.to_i <= 0 
	age = nil
else age = input
end

p "Hamster Name: #{hamster_name}" 
p "Volume Level: #{hamster_volume}"
p "Fur Color: #{hamster_color}"
p "Good candidate for adoption: #{candidate}"
p "Estimated age: #{age}"
puts "Thanks for entrying this hamster's information"