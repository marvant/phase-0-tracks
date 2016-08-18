class Santa 

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
		type
	end

	def initialize
		puts "Initializing Santa instance..."
	end
end

x = Santa.new
x.speak
x.eat_milk_and_cookies("oreo")