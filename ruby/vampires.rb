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

if condition == nil
	condition = "Results Inconclusive"
end
puts condition


