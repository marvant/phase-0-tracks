#getting the number of employees and converting it to an intiger
puts "How many employees will be proccessed?"
num_employee=gets.chomp.to_i
#adding a while loop for getting info for all employees
i= 1
while i <= num_employee do

#getting employee's name and saving it in uppercase to be used for matching conditions
puts "What is your name?"
name = gets.chomp.upcase

#getting employee's age and year born and saving it in intiger to be used for matching conditions
puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i
#calculating age from year born
cal_age = 2016 - year_born

#asking if the employee likes garlic bread and saving it in upercase format
puts "Our compnay cafeteria serves garlic bread.  Should we order some for you?"
wants_garlic = gets.chomp.upcase

#asking if the employee like to get health insurance and saving it in upercase format
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp.upcase

#proccessing the information for each employee and printing the condition.
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

#getting the list of employee's allergy and proccessing the entries
puts "Please list all your allergies"
allergies = gets.chomp
until allergies == "done"
	if allergies == "sunshine"
		condition = "Probably a vampire"
		allergies = "done"
	else allergies = gets.chomp
end
end

#if none of the conditions above apply print inconclusive message
if condition == nil
	condition = "Results Inconclusive"
end
puts condition

i+=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 

