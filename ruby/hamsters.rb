puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "What is the hamster's volume level (1-10)?"
hamster_volume = gets.chomp
puts "What is hamster's fur color?"
hamster_color = gets.chomp
puts "Is the hamster good candidate for adoption (Y/N)?"
candidate = gets.chomp
puts "What is the hamster's estimated age?"
input = gets.chomp
if input.to_i <= 0 
	age = nil
else age = input
end