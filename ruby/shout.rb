# module Shout
# 	# we'll put some methods here soon, but this code is fine for nwo!
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "..." + " :)"
# 	end

# end

# p Shout.yell_angrily ("Why my code is not working")
# p Shout.yelling_happily ("Got it to work")

#module for different shouting methods
module Shout
	#method for shouting team_name
	def shouting(team_name)
	puts "Lets go #{team_name}!"
	puts "Lets go #{team_name}!"
	puts "Lets go #{team_name}!"
	end
end

#cheerleader shouting class that includes Shout module
class Cheerleaders_shouting
	include Shout
end

#Fans shouting class that includes Shout module
class Fans_shouting
	include Shout
end

#driver codes
cheer = Cheerleaders_shouting.new
cheer.shouting("Warriors")

fans = Fans_shouting.new
fans.shouting("Warriors")

