#create a hash to store the data 
hash = {}

#git the first name and convert it to lower case letters
puts "Enter a first name or quit to exit?"
first_name = gets.chomp.downcase

#until loop to allow user enter as many name as he/she like and typ quit to exit the loop
until first_name == "quit"
#git the last name and convert it to the lower case letters
puts "What is the last name?"
last_name = gets.chomp.downcase


#make an array for vowels 
vowels = ["a", "e", "i", "o", "u"]

#convert the first name to array
first_name_array = first_name.split("")

#change all the vowels to the next vowel in the alphabet and 
#all the consonant to the next consonant in the alphabet
#for the first name
first_name_array.map! do |x|
	if 
		x == vowels[0]
		x = vowels[1]
	elsif 
		x == vowels[1]
		x = vowels[2]
	elsif 
		x == vowels[2]
		x = vowels[3]
	elsif 
		x == vowels[3]
		x = vowels[4]
	elsif 
		x == vowels[4]
		x = vowels[0]
	else
		x = x.next
	end
end

#convert first name array back to string and capitalize
new_first_name = first_name_array.join("").capitalize!


#convert the last name to array
last_name_array = last_name.split("")

#change all the vowels to the next vowel in the alphabet and 
#all the consonant to the next consonant in the alphabet
#for the last name
last_name_array.map! do |x|
	if 
		x == vowels[0]
		x = vowels[1]
	elsif 
		x == vowels[1]
		x = vowels[2]
	elsif 
		x == vowels[2]
		x = vowels[3]
	elsif 
		x == vowels[3]
		x = vowels[4]
	elsif 
		x == vowels[4]
		x = vowels[0]
	else
		x = x.next
	end
end

#convert last name array back to string and capitalize
new_last_name = last_name_array.join("").capitalize

#reversing the first name and last name for printing the result and storing in hash
name = [new_first_name, new_last_name]
name.reverse!
result = name.join(" ")
puts result

#joining the original first name and last name to be used as key in hash
original_name = [first_name.capitalize, last_name.capitalize]
result1 = original_name.join(" ")

#storing new key and value in hash
hash[result1] = result

#closing until loop
puts "Enter a first name or quit to exit?"
first_name = gets.chomp.downcase
end

#printing all the data user entered
hash.each do |actuall_name,fake_name|
	puts "#{fake_name} is actually #{actuall_name}"
end


