#First create an empty hash for collecting and storing client info
client_info = {}

#Now we ask user to enter clients info and we store it in the hash
#First ask for client's name
puts "What is client's name?"
client_info[:name] = gets.chomp

#next ask for client's age
puts "What is client's age?"
client_info[:age] = gets.chomp

#then ask for clients's number of children
puts "How many children does #{client_info[:name]} have?"
client_info[:number_of_children] = gets.chomp

#ask for client's theme request
puts "What decor theme #{client_info[:name]} likes?"
client_info[:decor_theme] = gets.chomp

#print the hash
client_info