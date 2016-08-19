class Santa 

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
		type
	end

	def initialize (gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at (name)
		@reindeer_ranking.push(@reindeer_ranking.delete(name))
	end

	#setter method
	def gender= (new_gender)
		@gender = new_gender
	end

	#getter methods
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end

# x = Santa.new
# x.speak
# x.eat_milk_and_cookies("oreo")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas

x = Santa.new("male", "black")
p x
p x.speak
p x.eat_milk_and_cookies("oreo")
p x.celebrate_birthday
p x.get_mad_at("Dasher")
p x.gender = "Complicated"
puts "Our #{x.ethnicity} santa is #{x.age} years old"




