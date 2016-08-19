#create new class
class Soccer_player

	#initialization method to print a message when new instance (player) is created
	def initialize (name, age, height)
		puts "initializing new player."
		@name = name
		@age = age
		@height = height
	end

#method to shoot the ball
	def shoot
		puts "#{@name} shoots the ball"
	end

#method to cross the ball
	def cross
		puts "#{@name} crosses the ball"
	end

#method to score
	def score
		puts "Gooooooooooooooooaaaaaaaalllll....#{@age} year old #{@name} scores."
	end

#method for assigning a position to a player (a method that takes an argument)
	def player_poistion(poition)
		@position = poition
		puts "#{@name} plays in #{@position} position."
	end

end

#driver codes
new_player = Soccer_player.new("Messi", 29, 5.7)
new_player.shoot
new_player.player_poistion("Forward")