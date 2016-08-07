puts "How many employees will be proccessed?"
num_employee=gets.chomp.to_i
i= 1
while i <= num_employee do

puts "What is your name?"
name = gets.chomp.upcase

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i
#calculating age from year born
cal_age = 2016 - year_born

puts "Our compnay cafeteria serves garlic bread.  Should we order some for you?"
wants_garlic = gets.chomp.upcase

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp.upcase

if cal_age == age && (wants_garlic == "YES" || insurance == "YES")
	condition = "Probably not a vampire."
end

if cal_age != age && (wants_garlic == "NO" || insurance == "NO")
	condition = "Probably a vampire."
end

if cal_age != age && (wants_garlic == "NO" && insurance == "NO")
	condition = "Almost certainly a vampire."
end

if name == "DRACULA" || name == "TU FANG" || name == "DRAKE CULA"
	condition = "Definitely a vampire"
end

puts "Please list all your allergies"
allergies = gets.chomp
until allergies == "done"
	if allergies == "sunshine"
		condition = "Probably a vampire"
		allergies = "done"
	else allergies = gets.chomp
end
end

if condition == nil
	condition = "Results Inconclusive"
end
puts condition

i+=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 

