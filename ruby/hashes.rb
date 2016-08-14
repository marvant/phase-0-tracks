#First create an empty hash for collecting and storing client info
client_info = {}

#Now we ask user to enter clients info and we store it in the hash
#First ask for client's name
puts "What is client's name?"
#collect data, convert to string and store it in hash
client_info[:name] = gets.chomp.to_s

#next ask for client's age
puts "What is client's age?"
#collect data, covert to integer and store it in hash
client_info[:age] = gets.chomp.to_i

#then ask for clients's number of children
puts "How many children does #{client_info[:name]} have?"
#collect data, convert to intiger and store it in hash
client_info[:number_of_children] = gets.chomp.to_i

#ask for client's theme request
puts "What decor theme #{client_info[:name]} likes?"
#collect data, convert to string and store it in hash
client_info[:decor_theme] = gets.chomp.to_s

#print the hash
p client_info

#ask if user wants to update any of the information
puts "If you like to undate an info enter the name other wise type none."
key = gets.chomp.to_sym

#if no info needs to be updated ask user to enter none and print a thank you message
if key == :none
	puts "Thank you for entering client's info"

#if user wants to update name or docore theme get new info and convert it to string
elsif key == :name || key == :decor_theme
	puts "Enter new data for #{key}"
	client_info[key] = gets.chomp.to_s
#if user wants to update age or number of children get new info and covert it to intiger
elsif key == :number_of_children || key == :age
	puts "Enter new data for #{key}"
	client_info[key] = gets.chomp.to_i
else
	puts "Thank you"
end
 
p client_info